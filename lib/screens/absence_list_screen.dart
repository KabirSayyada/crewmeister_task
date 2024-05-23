import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/absence_provider.dart';
import '../widgets/absence_card.dart';
import '../widgets/error_indicator.dart';
import '../widgets/loading_indicator.dart';


class AbsenceListScreen extends StatefulWidget {
  const AbsenceListScreen({super.key});

  @override
  AbsenceListScreenState createState() => AbsenceListScreenState();
}

class AbsenceListScreenState extends State<AbsenceListScreen> {

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadAbsences();
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _loadNextPage();
        });
      }
    });
  }

  Future<void> _loadAbsences() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });

    try {
      await Provider.of<AbsenceProvider>(context, listen: false).fetchAbsences(start, limit);
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _loadNextPage() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await Provider.of<AbsenceProvider>(context, listen: false).fetchNextPage();
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _resetTheAbsences() async {
    setState(() {
      _isLoading = true;
      _errorMessage = '';
    });
    try {
      Provider.of<AbsenceProvider>(context, listen: false).reset();
      await Provider.of<AbsenceProvider>(context, listen: false).fetchAbsences(start, limit);
    } catch (error) {
      _errorMessage = error.toString();
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }



  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;
  String _errorMessage = '';
  int start = 0;
  final int limit = 10;
  String _filterType = 'All';
  DateTime _filterStartDate = DateTime.now();
  DateTime _filterEndDate = DateTime.now().add(const Duration(days: 7));


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absence List'),
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh, color: Colors.blue),
            onPressed: _isLoading ? null : _resetTheAbsences,
          ),
          DropdownButton<String>(
            value: _filterType,
            items: <String>['All', 'Vacation', 'Sickness'].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _filterType = newValue!;
                Provider.of<AbsenceProvider>(context, listen: false).filterAbsencesByType(_filterType);
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.date_range),
            onPressed: () async {
              _filterStartDate = await showDatePicker(
                context: context,
                initialDate: _filterStartDate,
                firstDate: DateTime.now().subtract(const Duration(days: 5 * 365)), // 5 years in the past
                lastDate: DateTime.now().add(const Duration(days: 5 * 365)), // 5 years in the future
              ) ?? _filterStartDate;

              _filterEndDate = await showDatePicker(
                context: context,
                initialDate: _filterEndDate,
                firstDate: DateTime.now().subtract(const Duration(days: 5 * 365)), // 5 years in the past
                lastDate: DateTime.now().add(const Duration(days: 5 * 365)), // 5 years in the future
              ) ?? _filterEndDate;

              Provider.of<AbsenceProvider>(context, listen: false).filterAbsencesByDate(_filterStartDate, _filterEndDate);
            },
          ),
        ],
      ),

      body: _isLoading
          ? const LoadingIndicator()
          : _errorMessage.isNotEmpty
          ? ErrorIndicator(errorMessage: _errorMessage)
          : Consumer<AbsenceProvider>(
        builder: (ctx, absenceProvider, _) {
          if (absenceProvider.getTotalAbsences() == 0) {
            return const Center(child: Text('No absences found'));
          }
          return Column(
            children: [
              Text('Total Absences: ${absenceProvider.getTotalAbsences()}'), // Display total absences
              Expanded(
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: absenceProvider.absences.length + 1,
                  itemBuilder: (_, i) {
                    if (i < absenceProvider.absences.length) {
                      return AbsenceCard(absence: absenceProvider.absences[i]);
                    } else {
                      return ElevatedButton(
                        onPressed: _isLoading ? null : _loadNextPage,
                        child: const Text('Load more'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, //foreground
                          backgroundColor: Colors.lightGreen, // background
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}