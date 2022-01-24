import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../models/transaction_model.dart';
import 'utils.dart';

const categoriesList = [
  CategoryModel(
    title: 'Apartment bills',
    percentage: 33,
    color: ColorTable.clrs_4,
  ),
  CategoryModel(
    title: 'Groceries',
    percentage: 25.5,
    color: ColorTable.clrs_5,
  ),
  CategoryModel(
    title: 'Cafes & Entertainment',
    percentage: 21,
    color: ColorTable.clrs_2,
  ),
  CategoryModel(
    title: 'Transport',
    percentage: 10.5,
    color: ColorTable.clrs_3,
  ),
  CategoryModel(
    title: 'Health',
    percentage: 5.7,
    color: ColorTable.clrs_1,
  ),
  CategoryModel(
    title: 'Subscriptions',
    percentage: 4.3,
    color: ColorTable.clrs_6,
  ),
];

const transcationsList = [
  TransactionModel(
    title: 'Uber Taxi',
    categoryName: 'Transport',
    icon: Icons.directions_car,
    amount: 13.55,
    color: ColorTable.clrs_5,
  ),
  TransactionModel(
    title: 'Lou lou Cafe',
    categoryName: 'Cafes & Entertainment',
    icon: Icons.dining,
    amount: 75.40,
    color: ColorTable.clrs_3,
  ),
  TransactionModel(
    title: 'Google One',
    categoryName: 'Subscriptions',
    icon: Icons.sports_esports,
    amount: 20.99,
    color: ColorTable.clrs_7,
  ),
];
