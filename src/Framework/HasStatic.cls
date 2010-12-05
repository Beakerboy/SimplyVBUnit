VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "HasStatic"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
' Copyright 2010 Kelly Ethridge
'
' Licensed under the Apache License, Version 2.0 (the "License");
' you may not use this file except in compliance with the License.
' You may obtain a copy of the License at
'
'     http://www.apache.org/licenses/LICENSE-2.0
'
' Unless required by applicable law or agreed to in writing, software
' distributed under the License is distributed on an "AS IS" BASIS,
' WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
' See the License for the specific language governing permissions and
' limitations under the License.
'
' Module: HasStatic
'
Option Explicit

Public Function All() As IConstraintExpression
    Set All = NewExp.All
End Function

Public Function No() As IConstraintExpression
    Set No = NewExp.Not
End Function

Public Function Some() As IConstraintExpression
    Set Some = NewExp.Some
End Function

Public Function None() As IConstraintExpression
    Set None = NewExp.None
End Function

Public Function Member(ByRef Expected As Variant) As ICollectionContainsConstraint
    Set Member = NewExp.Member(Expected)
End Function


'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'   Private Helpers
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
Private Function NewExp() As IConstraintExpression
    Set NewExp = New ConstraintExpression
End Function