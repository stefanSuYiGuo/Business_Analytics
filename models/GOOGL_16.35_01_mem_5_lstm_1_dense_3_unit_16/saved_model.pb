гд:
ЅР
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758вґ6
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
А
Adam/v/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_21/bias
y
(Adam/v/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_21/bias
y
(Adam/m/dense_21/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_21/kernel
Б
*Adam/v/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_21/kernel*
_output_shapes

:*
dtype0
И
Adam/m/dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_21/kernel
Б
*Adam/m/dense_21/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_21/kernel*
_output_shapes

:*
dtype0
А
Adam/v/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_20/bias
y
(Adam/v/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_20/bias
y
(Adam/m/dense_20/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_20/kernel
Б
*Adam/v/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_20/kernel*
_output_shapes

:*
dtype0
И
Adam/m/dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_20/kernel
Б
*Adam/m/dense_20/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_20/kernel*
_output_shapes

:*
dtype0
А
Adam/v/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_19/bias
y
(Adam/v/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_19/bias
y
(Adam/m/dense_19/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_19/kernel
Б
*Adam/v/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_19/kernel*
_output_shapes

:*
dtype0
И
Adam/m/dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_19/kernel
Б
*Adam/m/dense_19/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_19/kernel*
_output_shapes

:*
dtype0
А
Adam/v/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/v/dense_18/bias
y
(Adam/v/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/bias*
_output_shapes
:*
dtype0
А
Adam/m/dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/m/dense_18/bias
y
(Adam/m/dense_18/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/bias*
_output_shapes
:*
dtype0
И
Adam/v/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/v/dense_18/kernel
Б
*Adam/v/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_18/kernel*
_output_shapes

:*
dtype0
И
Adam/m/dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/m/dense_18/kernel
Б
*Adam/m/dense_18/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_18/kernel*
_output_shapes

:*
dtype0
Ш
 Adam/v/lstm_23/lstm_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/lstm_23/lstm_cell_23/bias
С
4Adam/v/lstm_23/lstm_cell_23/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_23/lstm_cell_23/bias*
_output_shapes
:@*
dtype0
Ш
 Adam/m/lstm_23/lstm_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/lstm_23/lstm_cell_23/bias
С
4Adam/m/lstm_23/lstm_cell_23/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_23/lstm_cell_23/bias*
_output_shapes
:@*
dtype0
і
,Adam/v/lstm_23/lstm_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel
≠
@Adam/v/lstm_23/lstm_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel*
_output_shapes

:@*
dtype0
і
,Adam/m/lstm_23/lstm_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel
≠
@Adam/m/lstm_23/lstm_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel*
_output_shapes

:@*
dtype0
†
"Adam/v/lstm_23/lstm_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/v/lstm_23/lstm_cell_23/kernel
Щ
6Adam/v/lstm_23/lstm_cell_23/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_23/lstm_cell_23/kernel*
_output_shapes

:@*
dtype0
†
"Adam/m/lstm_23/lstm_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/m/lstm_23/lstm_cell_23/kernel
Щ
6Adam/m/lstm_23/lstm_cell_23/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_23/lstm_cell_23/kernel*
_output_shapes

:@*
dtype0
Ш
 Adam/v/lstm_22/lstm_cell_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/lstm_22/lstm_cell_22/bias
С
4Adam/v/lstm_22/lstm_cell_22/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_22/lstm_cell_22/bias*
_output_shapes
:@*
dtype0
Ш
 Adam/m/lstm_22/lstm_cell_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/lstm_22/lstm_cell_22/bias
С
4Adam/m/lstm_22/lstm_cell_22/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_22/lstm_cell_22/bias*
_output_shapes
:@*
dtype0
і
,Adam/v/lstm_22/lstm_cell_22/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel
≠
@Adam/v/lstm_22/lstm_cell_22/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel*
_output_shapes

:@*
dtype0
і
,Adam/m/lstm_22/lstm_cell_22/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel
≠
@Adam/m/lstm_22/lstm_cell_22/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel*
_output_shapes

:@*
dtype0
†
"Adam/v/lstm_22/lstm_cell_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/v/lstm_22/lstm_cell_22/kernel
Щ
6Adam/v/lstm_22/lstm_cell_22/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_22/lstm_cell_22/kernel*
_output_shapes

:@*
dtype0
†
"Adam/m/lstm_22/lstm_cell_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/m/lstm_22/lstm_cell_22/kernel
Щ
6Adam/m/lstm_22/lstm_cell_22/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_22/lstm_cell_22/kernel*
_output_shapes

:@*
dtype0
Ш
 Adam/v/lstm_21/lstm_cell_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/lstm_21/lstm_cell_21/bias
С
4Adam/v/lstm_21/lstm_cell_21/bias/Read/ReadVariableOpReadVariableOp Adam/v/lstm_21/lstm_cell_21/bias*
_output_shapes
:@*
dtype0
Ш
 Adam/m/lstm_21/lstm_cell_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/lstm_21/lstm_cell_21/bias
С
4Adam/m/lstm_21/lstm_cell_21/bias/Read/ReadVariableOpReadVariableOp Adam/m/lstm_21/lstm_cell_21/bias*
_output_shapes
:@*
dtype0
і
,Adam/v/lstm_21/lstm_cell_21/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel
≠
@Adam/v/lstm_21/lstm_cell_21/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel*
_output_shapes

:@*
dtype0
і
,Adam/m/lstm_21/lstm_cell_21/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*=
shared_name.,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel
≠
@Adam/m/lstm_21/lstm_cell_21/recurrent_kernel/Read/ReadVariableOpReadVariableOp,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel*
_output_shapes

:@*
dtype0
†
"Adam/v/lstm_21/lstm_cell_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/v/lstm_21/lstm_cell_21/kernel
Щ
6Adam/v/lstm_21/lstm_cell_21/kernel/Read/ReadVariableOpReadVariableOp"Adam/v/lstm_21/lstm_cell_21/kernel*
_output_shapes

:@*
dtype0
†
"Adam/m/lstm_21/lstm_cell_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*3
shared_name$"Adam/m/lstm_21/lstm_cell_21/kernel
Щ
6Adam/m/lstm_21/lstm_cell_21/kernel/Read/ReadVariableOpReadVariableOp"Adam/m/lstm_21/lstm_cell_21/kernel*
_output_shapes

:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
К
lstm_23/lstm_cell_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_23/lstm_cell_23/bias
Г
-lstm_23/lstm_cell_23/bias/Read/ReadVariableOpReadVariableOplstm_23/lstm_cell_23/bias*
_output_shapes
:@*
dtype0
¶
%lstm_23/lstm_cell_23/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_23/lstm_cell_23/recurrent_kernel
Я
9lstm_23/lstm_cell_23/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_23/lstm_cell_23/recurrent_kernel*
_output_shapes

:@*
dtype0
Т
lstm_23/lstm_cell_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_23/lstm_cell_23/kernel
Л
/lstm_23/lstm_cell_23/kernel/Read/ReadVariableOpReadVariableOplstm_23/lstm_cell_23/kernel*
_output_shapes

:@*
dtype0
К
lstm_22/lstm_cell_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_22/lstm_cell_22/bias
Г
-lstm_22/lstm_cell_22/bias/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_22/bias*
_output_shapes
:@*
dtype0
¶
%lstm_22/lstm_cell_22/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_22/lstm_cell_22/recurrent_kernel
Я
9lstm_22/lstm_cell_22/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_22/lstm_cell_22/recurrent_kernel*
_output_shapes

:@*
dtype0
Т
lstm_22/lstm_cell_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_22/lstm_cell_22/kernel
Л
/lstm_22/lstm_cell_22/kernel/Read/ReadVariableOpReadVariableOplstm_22/lstm_cell_22/kernel*
_output_shapes

:@*
dtype0
К
lstm_21/lstm_cell_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelstm_21/lstm_cell_21/bias
Г
-lstm_21/lstm_cell_21/bias/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_21/bias*
_output_shapes
:@*
dtype0
¶
%lstm_21/lstm_cell_21/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*6
shared_name'%lstm_21/lstm_cell_21/recurrent_kernel
Я
9lstm_21/lstm_cell_21/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_21/lstm_cell_21/recurrent_kernel*
_output_shapes

:@*
dtype0
Т
lstm_21/lstm_cell_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_namelstm_21/lstm_cell_21/kernel
Л
/lstm_21/lstm_cell_21/kernel/Read/ReadVariableOpReadVariableOplstm_21/lstm_cell_21/kernel*
_output_shapes

:@*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:*
dtype0
z
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_21/kernel
s
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes

:*
dtype0
r
dense_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_20/bias
k
!dense_20/bias/Read/ReadVariableOpReadVariableOpdense_20/bias*
_output_shapes
:*
dtype0
z
dense_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_20/kernel
s
#dense_20/kernel/Read/ReadVariableOpReadVariableOpdense_20/kernel*
_output_shapes

:*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:*
dtype0
И
serving_default_lstm_21_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
ч
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_21_inputlstm_21/lstm_cell_21/kernel%lstm_21/lstm_cell_21/recurrent_kernellstm_21/lstm_cell_21/biaslstm_22/lstm_cell_22/kernel%lstm_22/lstm_cell_22/recurrent_kernellstm_22/lstm_cell_22/biaslstm_23/lstm_cell_23/kernel%lstm_23/lstm_cell_23/recurrent_kernellstm_23/lstm_cell_23/biasdense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_284330

NoOpNoOp
юО
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЄО
value≠ОB©О B°О
Ѓ
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
•
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator* 
Ѕ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_random_generator
.cell
/
state_spec*
•
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_random_generator* 
Ѕ
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator
>cell
?
state_spec*
•
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator* 
¶
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias*
•
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
U_random_generator* 
¶
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias*
•
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator* 
¶
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias*
•
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator* 
¶
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
З
|0
}1
~2
3
А4
Б5
В6
Г7
Д8
M9
N10
\11
]12
k13
l14
z15
{16*
З
|0
}1
~2
3
А4
Б5
В6
Г7
Д8
M9
N10
\11
]12
k13
l14
z15
{16*
* 
µ
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_3* 
:
Оtrace_0
Пtrace_1
Рtrace_2
Сtrace_3* 
* 
И
Т
_variables
У_iterations
Ф_learning_rate
Х_index_dict
Ц
_momentums
Ч_velocities
Ш_update_step_xla*

Щserving_default* 

|0
}1
~2*

|0
}1
~2*
* 
•
Ъstates
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
†trace_0
°trace_1
Ґtrace_2
£trace_3* 
:
§trace_0
•trace_1
¶trace_2
Іtrace_3* 
* 
л
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses
Ѓ_random_generator
ѓ
state_size

|kernel
}recurrent_kernel
~bias*
* 
* 
* 
* 
Ц
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

µtrace_0
ґtrace_1* 

Јtrace_0
Єtrace_1* 
* 

0
А1
Б2*

0
А1
Б2*
* 
•
єstates
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*
:
њtrace_0
јtrace_1
Ѕtrace_2
¬trace_3* 
:
√trace_0
ƒtrace_1
≈trace_2
∆trace_3* 
* 
н
«	variables
»trainable_variables
…regularization_losses
 	keras_api
Ћ__call__
+ћ&call_and_return_all_conditional_losses
Ќ_random_generator
ќ
state_size

kernel
Аrecurrent_kernel
	Бbias*
* 
* 
* 
* 
Ц
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

‘trace_0
’trace_1* 

÷trace_0
„trace_1* 
* 

В0
Г1
Д2*

В0
Г1
Д2*
* 
•
Ўstates
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses*
:
ёtrace_0
яtrace_1
аtrace_2
бtrace_3* 
:
вtrace_0
гtrace_1
дtrace_2
еtrace_3* 
* 
о
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator
н
state_size
Вkernel
Гrecurrent_kernel
	Дbias*
* 
* 
* 
* 
Ц
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

уtrace_0
фtrace_1* 

хtrace_0
цtrace_1* 
* 

M0
N1*

M0
N1*
* 
Ш
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

ьtrace_0* 

эtrace_0* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses* 

Гtrace_0
Дtrace_1* 

Еtrace_0
Жtrace_1* 
* 

\0
]1*

\0
]1*
* 
Ш
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

Мtrace_0* 

Нtrace_0* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

Уtrace_0
Фtrace_1* 

Хtrace_0
Цtrace_1* 
* 

k0
l1*

k0
l1*
* 
Ш
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

Ьtrace_0* 

Эtrace_0* 
_Y
VARIABLE_VALUEdense_20/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_20/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses* 

£trace_0
§trace_1* 

•trace_0
¶trace_1* 
* 

z0
{1*

z0
{1*
* 
Ш
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

ђtrace_0* 

≠trace_0* 
_Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_21/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_21/lstm_cell_21/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_21/lstm_cell_21/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_21/lstm_cell_21/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_22/lstm_cell_22/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_22/lstm_cell_22/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_22/lstm_cell_22/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUElstm_23/lstm_cell_23/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_23/lstm_cell_23/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_23/lstm_cell_23/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

Ѓ0
ѓ1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
µ
У0
∞1
±2
≤3
≥4
і5
µ6
ґ7
Ј8
Є9
є10
Ї11
ї12
Љ13
љ14
Њ15
њ16
ј17
Ѕ18
¬19
√20
ƒ21
≈22
∆23
«24
»25
…26
 27
Ћ28
ћ29
Ќ30
ќ31
ѕ32
–33
—34*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
У
∞0
≤1
і2
ґ3
Є4
Ї5
Љ6
Њ7
ј8
¬9
ƒ10
∆11
»12
 13
ћ14
ќ15
–16*
У
±0
≥1
µ2
Ј3
є4
ї5
љ6
њ7
Ѕ8
√9
≈10
«11
…12
Ћ13
Ќ14
ѕ15
—16*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

|0
}1
~2*

|0
}1
~2*
* 
Ю
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses*

„trace_0
Ўtrace_1* 

ўtrace_0
Џtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

.0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
А1
Б2*

0
А1
Б2*
* 
Ю
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
«	variables
»trainable_variables
…regularization_losses
Ћ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses*

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

>0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

В0
Г1
Д2*

В0
Г1
Д2*
* 
Ю
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses*

йtrace_0
кtrace_1* 

лtrace_0
мtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
н	variables
о	keras_api

пtotal

рcount*
M
с	variables
т	keras_api

уtotal

фcount
х
_fn_kwargs*
mg
VARIABLE_VALUE"Adam/m/lstm_21/lstm_cell_21/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_21/lstm_cell_21/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/lstm_21/lstm_cell_21/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/lstm_21/lstm_cell_21/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/m/lstm_22/lstm_cell_22/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE"Adam/v/lstm_22/lstm_cell_22/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_22/lstm_cell_22/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_22/lstm_cell_22/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/lstm_23/lstm_cell_23/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/lstm_23/lstm_cell_23/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/m/lstm_23/lstm_cell_23/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE Adam/v/lstm_23/lstm_cell_23/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_18/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_18/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_18/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_18/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_19/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_19/kernel2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_19/bias2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_19/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_20/kernel2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_20/kernel2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_20/bias2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_20/bias2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_21/kernel2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_21/kernel2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_21/bias2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_21/bias2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

п0
р1*

н	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

у0
ф1*

с	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
”
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/biaslstm_21/lstm_cell_21/kernel%lstm_21/lstm_cell_21/recurrent_kernellstm_21/lstm_cell_21/biaslstm_22/lstm_cell_22/kernel%lstm_22/lstm_cell_22/recurrent_kernellstm_22/lstm_cell_22/biaslstm_23/lstm_cell_23/kernel%lstm_23/lstm_cell_23/recurrent_kernellstm_23/lstm_cell_23/bias	iterationlearning_rate"Adam/m/lstm_21/lstm_cell_21/kernel"Adam/v/lstm_21/lstm_cell_21/kernel,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel Adam/m/lstm_21/lstm_cell_21/bias Adam/v/lstm_21/lstm_cell_21/bias"Adam/m/lstm_22/lstm_cell_22/kernel"Adam/v/lstm_22/lstm_cell_22/kernel,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel Adam/m/lstm_22/lstm_cell_22/bias Adam/v/lstm_22/lstm_cell_22/bias"Adam/m/lstm_23/lstm_cell_23/kernel"Adam/v/lstm_23/lstm_cell_23/kernel,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel Adam/m/lstm_23/lstm_cell_23/bias Adam/v/lstm_23/lstm_cell_23/biasAdam/m/dense_18/kernelAdam/v/dense_18/kernelAdam/m/dense_18/biasAdam/v/dense_18/biasAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biasAdam/m/dense_20/kernelAdam/v/dense_20/kernelAdam/m/dense_20/biasAdam/v/dense_20/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biastotal_1count_1totalcountConst*F
Tin?
=2;*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *(
f#R!
__inference__traced_save_288118
ќ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_18/kerneldense_18/biasdense_19/kerneldense_19/biasdense_20/kerneldense_20/biasdense_21/kerneldense_21/biaslstm_21/lstm_cell_21/kernel%lstm_21/lstm_cell_21/recurrent_kernellstm_21/lstm_cell_21/biaslstm_22/lstm_cell_22/kernel%lstm_22/lstm_cell_22/recurrent_kernellstm_22/lstm_cell_22/biaslstm_23/lstm_cell_23/kernel%lstm_23/lstm_cell_23/recurrent_kernellstm_23/lstm_cell_23/bias	iterationlearning_rate"Adam/m/lstm_21/lstm_cell_21/kernel"Adam/v/lstm_21/lstm_cell_21/kernel,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel Adam/m/lstm_21/lstm_cell_21/bias Adam/v/lstm_21/lstm_cell_21/bias"Adam/m/lstm_22/lstm_cell_22/kernel"Adam/v/lstm_22/lstm_cell_22/kernel,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel Adam/m/lstm_22/lstm_cell_22/bias Adam/v/lstm_22/lstm_cell_22/bias"Adam/m/lstm_23/lstm_cell_23/kernel"Adam/v/lstm_23/lstm_cell_23/kernel,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel Adam/m/lstm_23/lstm_cell_23/bias Adam/v/lstm_23/lstm_cell_23/biasAdam/m/dense_18/kernelAdam/v/dense_18/kernelAdam/m/dense_18/biasAdam/v/dense_18/biasAdam/m/dense_19/kernelAdam/v/dense_19/kernelAdam/m/dense_19/biasAdam/v/dense_19/biasAdam/m/dense_20/kernelAdam/v/dense_20/kernelAdam/m/dense_20/biasAdam/v/dense_20/biasAdam/m/dense_21/kernelAdam/v/dense_21/kernelAdam/m/dense_21/biasAdam/v/dense_21/biastotal_1count_1totalcount*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__traced_restore_288299ГЗ4
И
г
lstm_23_while_cond_284761,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3.
*lstm_23_while_less_lstm_23_strided_slice_1D
@lstm_23_while_lstm_23_while_cond_284761___redundant_placeholder0D
@lstm_23_while_lstm_23_while_cond_284761___redundant_placeholder1D
@lstm_23_while_lstm_23_while_cond_284761___redundant_placeholder2D
@lstm_23_while_lstm_23_while_cond_284761___redundant_placeholder3
lstm_23_while_identity
В
lstm_23/while/LessLesslstm_23_while_placeholder*lstm_23_while_less_lstm_23_strided_slice_1*
T0*
_output_shapes
: [
lstm_23/while/IdentityIdentitylstm_23/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_23_while_identitylstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_23/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ћ
Б
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282241

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Ы

х
D__inference_dense_20_layer_call_and_return_conditional_losses_283307

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°
G
+__inference_dropout_37_layer_call_fn_287423

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283848`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ёK
Ъ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286837
inputs_0=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286752*
condR
while_cond_286751*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
їK
Ш
C__inference_lstm_23_layer_call_and_return_conditional_losses_283803

inputs=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_283718*
condR
while_cond_283717*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у
d
+__inference_dropout_35_layer_call_fn_287324

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283263o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_286537
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
э9
 
while_body_287187
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
¬
Ц
)__inference_dense_20_layer_call_fn_287402

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_283307o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ

e
F__inference_dropout_36_layer_call_and_return_conditional_losses_283294

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
М
і
(__inference_lstm_23_layer_call_fn_286670
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_282678o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
Ъ

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_283325

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ

e
F__inference_dropout_36_layer_call_and_return_conditional_losses_287388

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”
Г
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287557

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
¬
Ц
)__inference_dense_19_layer_call_fn_287355

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_283276o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_282607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282607___redundant_placeholder04
0while_while_cond_282607___redundant_placeholder14
0while_while_cond_282607___redundant_placeholder24
0while_while_cond_282607___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
±
G
+__inference_dropout_33_layer_call_fn_286631

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283657d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬#
Ё
while_body_282255
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_22_282279_0:@-
while_lstm_cell_22_282281_0:@)
while_lstm_cell_22_282283_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_22_282279:@+
while_lstm_cell_22_282281:@'
while_lstm_cell_22_282283:@ИҐ*while/lstm_cell_22/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_282279_0while_lstm_cell_22_282281_0while_lstm_cell_22_282283_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282241№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_282279while_lstm_cell_22_282279_0"8
while_lstm_cell_22_282281while_lstm_cell_22_282281_0"8
while_lstm_cell_22_282283while_lstm_cell_22_282283_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ч	
√
while_cond_282797
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282797___redundant_placeholder04
0while_while_cond_282797___redundant_placeholder14
0while_while_cond_282797___redundant_placeholder24
0while_while_cond_282797___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
¶
і
(__inference_lstm_22_layer_call_fn_286027
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_282324|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
и
у
-__inference_lstm_cell_22_layer_call_fn_287591

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282241o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Ч	
√
while_cond_281759
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_281759___redundant_placeholder04
0while_while_cond_281759___redundant_placeholder14
0while_while_cond_281759___redundant_placeholder24
0while_while_cond_281759___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
И
г
lstm_22_while_cond_285104,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_285104___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_285104___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_285104___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_285104___redundant_placeholder3
lstm_22_while_identity
В
lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: [
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_22_while_identitylstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_22/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ц9
В
C__inference_lstm_23_layer_call_and_return_conditional_losses_282531

inputs%
lstm_cell_23_282447:@%
lstm_cell_23_282449:@!
lstm_cell_23_282451:@
identityИҐ$lstm_cell_23/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_282447lstm_cell_23_282449lstm_cell_23_282451*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282446n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_282447lstm_cell_23_282449lstm_cell_23_282451*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282461*
condR
while_cond_282460*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€u
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ц9
В
C__inference_lstm_23_layer_call_and_return_conditional_losses_282678

inputs%
lstm_cell_23_282594:@%
lstm_cell_23_282596:@!
lstm_cell_23_282598:@
identityИҐ$lstm_cell_23/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_23_282594lstm_cell_23_282596lstm_cell_23_282598*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282593n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_23_282594lstm_cell_23_282596lstm_cell_23_282598*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282608*
condR
while_cond_282607*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€u
NoOpNoOp%^lstm_cell_23/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_23/StatefulPartitionedCall$lstm_cell_23/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
”
Г
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287655

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
й
d
F__inference_dropout_33_layer_call_and_return_conditional_losses_286648

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°
G
+__inference_dropout_36_layer_call_fn_287376

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283837`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
±
G
+__inference_dropout_32_layer_call_fn_285988

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_283501d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¶
і
(__inference_lstm_22_layer_call_fn_286016
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_282179|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
ї@
м
H__inference_sequential_7_layer_call_and_return_conditional_losses_283344
lstm_21_input 
lstm_21_282883:@ 
lstm_21_282885:@
lstm_21_282887:@ 
lstm_22_283047:@ 
lstm_22_283049:@
lstm_22_283051:@ 
lstm_23_283213:@ 
lstm_23_283215:@
lstm_23_283217:@!
dense_18_283246:
dense_18_283248:!
dense_19_283277:
dense_19_283279:!
dense_20_283308:
dense_20_283310:!
dense_21_283338:
dense_21_283340:
identityИҐ dense_18/StatefulPartitionedCallҐ dense_19/StatefulPartitionedCallҐ dense_20/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ"dropout_32/StatefulPartitionedCallҐ"dropout_33/StatefulPartitionedCallҐ"dropout_34/StatefulPartitionedCallҐ"dropout_35/StatefulPartitionedCallҐ"dropout_36/StatefulPartitionedCallҐ"dropout_37/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallҐlstm_23/StatefulPartitionedCallЙ
lstm_21/StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputlstm_21_282883lstm_21_282885lstm_21_282887*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_282882т
"dropout_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_282902І
lstm_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_32/StatefulPartitionedCall:output:0lstm_22_283047lstm_22_283049lstm_22_283051*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283046Ч
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0#^dropout_32/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283066£
lstm_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0lstm_23_283213lstm_23_283215lstm_23_283217*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283212У
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_23/StatefulPartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283232Х
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_18_283246dense_18_283248*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_283245Ф
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0#^dropout_34/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283263Х
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_19_283277dense_19_283279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_283276Ф
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283294Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_20_283308dense_20_283310*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_283307Ф
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283325Х
 dense_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_21_283338dense_21_283340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_283337x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall#^dropout_32/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2H
"dropout_32/StatefulPartitionedCall"dropout_32/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
б8
 
while_body_285751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ъ

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_283232

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
и
у
-__inference_lstm_cell_23_layer_call_fn_287672

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Ч	
√
while_cond_282961
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282961___redundant_placeholder04
0while_while_cond_282961___redundant_placeholder14
0while_while_cond_282961___redundant_placeholder24
0while_while_cond_282961___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ґ

e
F__inference_dropout_32_layer_call_and_return_conditional_losses_286000

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_283405
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
¶
і
(__inference_lstm_21_layer_call_fn_285384
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_281974|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
п
¬
-__inference_sequential_7_layer_call_fn_284037
lstm_21_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityИҐStatefulPartitionedCall≠
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_284000o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
Ъ

e
F__inference_dropout_35_layer_call_and_return_conditional_losses_283263

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ы

х
D__inference_dense_20_layer_call_and_return_conditional_losses_287413

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
и
у
-__inference_lstm_cell_21_layer_call_fn_287476

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
”
Г
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287623

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Ы

х
D__inference_dense_18_layer_call_and_return_conditional_losses_287319

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
й
d
F__inference_dropout_33_layer_call_and_return_conditional_losses_283657

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
«	
х
D__inference_dense_21_layer_call_and_return_conditional_losses_287459

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
гЬ
ё6
__inference__traced_save_288118
file_prefix8
&read_disablecopyonread_dense_18_kernel:4
&read_1_disablecopyonread_dense_18_bias::
(read_2_disablecopyonread_dense_19_kernel:4
&read_3_disablecopyonread_dense_19_bias::
(read_4_disablecopyonread_dense_20_kernel:4
&read_5_disablecopyonread_dense_20_bias::
(read_6_disablecopyonread_dense_21_kernel:4
&read_7_disablecopyonread_dense_21_bias:F
4read_8_disablecopyonread_lstm_21_lstm_cell_21_kernel:@P
>read_9_disablecopyonread_lstm_21_lstm_cell_21_recurrent_kernel:@A
3read_10_disablecopyonread_lstm_21_lstm_cell_21_bias:@G
5read_11_disablecopyonread_lstm_22_lstm_cell_22_kernel:@Q
?read_12_disablecopyonread_lstm_22_lstm_cell_22_recurrent_kernel:@A
3read_13_disablecopyonread_lstm_22_lstm_cell_22_bias:@G
5read_14_disablecopyonread_lstm_23_lstm_cell_23_kernel:@Q
?read_15_disablecopyonread_lstm_23_lstm_cell_23_recurrent_kernel:@A
3read_16_disablecopyonread_lstm_23_lstm_cell_23_bias:@-
#read_17_disablecopyonread_iteration:	 1
'read_18_disablecopyonread_learning_rate: N
<read_19_disablecopyonread_adam_m_lstm_21_lstm_cell_21_kernel:@N
<read_20_disablecopyonread_adam_v_lstm_21_lstm_cell_21_kernel:@X
Fread_21_disablecopyonread_adam_m_lstm_21_lstm_cell_21_recurrent_kernel:@X
Fread_22_disablecopyonread_adam_v_lstm_21_lstm_cell_21_recurrent_kernel:@H
:read_23_disablecopyonread_adam_m_lstm_21_lstm_cell_21_bias:@H
:read_24_disablecopyonread_adam_v_lstm_21_lstm_cell_21_bias:@N
<read_25_disablecopyonread_adam_m_lstm_22_lstm_cell_22_kernel:@N
<read_26_disablecopyonread_adam_v_lstm_22_lstm_cell_22_kernel:@X
Fread_27_disablecopyonread_adam_m_lstm_22_lstm_cell_22_recurrent_kernel:@X
Fread_28_disablecopyonread_adam_v_lstm_22_lstm_cell_22_recurrent_kernel:@H
:read_29_disablecopyonread_adam_m_lstm_22_lstm_cell_22_bias:@H
:read_30_disablecopyonread_adam_v_lstm_22_lstm_cell_22_bias:@N
<read_31_disablecopyonread_adam_m_lstm_23_lstm_cell_23_kernel:@N
<read_32_disablecopyonread_adam_v_lstm_23_lstm_cell_23_kernel:@X
Fread_33_disablecopyonread_adam_m_lstm_23_lstm_cell_23_recurrent_kernel:@X
Fread_34_disablecopyonread_adam_v_lstm_23_lstm_cell_23_recurrent_kernel:@H
:read_35_disablecopyonread_adam_m_lstm_23_lstm_cell_23_bias:@H
:read_36_disablecopyonread_adam_v_lstm_23_lstm_cell_23_bias:@B
0read_37_disablecopyonread_adam_m_dense_18_kernel:B
0read_38_disablecopyonread_adam_v_dense_18_kernel:<
.read_39_disablecopyonread_adam_m_dense_18_bias:<
.read_40_disablecopyonread_adam_v_dense_18_bias:B
0read_41_disablecopyonread_adam_m_dense_19_kernel:B
0read_42_disablecopyonread_adam_v_dense_19_kernel:<
.read_43_disablecopyonread_adam_m_dense_19_bias:<
.read_44_disablecopyonread_adam_v_dense_19_bias:B
0read_45_disablecopyonread_adam_m_dense_20_kernel:B
0read_46_disablecopyonread_adam_v_dense_20_kernel:<
.read_47_disablecopyonread_adam_m_dense_20_bias:<
.read_48_disablecopyonread_adam_v_dense_20_bias:B
0read_49_disablecopyonread_adam_m_dense_21_kernel:B
0read_50_disablecopyonread_adam_v_dense_21_kernel:<
.read_51_disablecopyonread_adam_m_dense_21_bias:<
.read_52_disablecopyonread_adam_v_dense_21_bias:+
!read_53_disablecopyonread_total_1: +
!read_54_disablecopyonread_count_1: )
read_55_disablecopyonread_total: )
read_56_disablecopyonread_count: 
savev2_const
identity_115ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_18_kernel"/device:CPU:0*
_output_shapes
 Ґ
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_18_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:a

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_18_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_18_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_dense_19_kernel"/device:CPU:0*
_output_shapes
 ®
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_dense_19_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_dense_19_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_dense_19_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_dense_20_kernel"/device:CPU:0*
_output_shapes
 ®
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_dense_20_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0m

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_dense_20_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_dense_20_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_dense_21_kernel"/device:CPU:0*
_output_shapes
 ®
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_dense_21_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0n
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes

:z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_dense_21_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_dense_21_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_lstm_21_lstm_cell_21_kernel"/device:CPU:0*
_output_shapes
 і
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_lstm_21_lstm_cell_21_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes

:@Т
Read_9/DisableCopyOnReadDisableCopyOnRead>read_9_disablecopyonread_lstm_21_lstm_cell_21_recurrent_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_9/ReadVariableOpReadVariableOp>read_9_disablecopyonread_lstm_21_lstm_cell_21_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0n
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:@И
Read_10/DisableCopyOnReadDisableCopyOnRead3read_10_disablecopyonread_lstm_21_lstm_cell_21_bias"/device:CPU:0*
_output_shapes
 ±
Read_10/ReadVariableOpReadVariableOp3read_10_disablecopyonread_lstm_21_lstm_cell_21_bias^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@К
Read_11/DisableCopyOnReadDisableCopyOnRead5read_11_disablecopyonread_lstm_22_lstm_cell_22_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_11/ReadVariableOpReadVariableOp5read_11_disablecopyonread_lstm_22_lstm_cell_22_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ф
Read_12/DisableCopyOnReadDisableCopyOnRead?read_12_disablecopyonread_lstm_22_lstm_cell_22_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_12/ReadVariableOpReadVariableOp?read_12_disablecopyonread_lstm_22_lstm_cell_22_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes

:@И
Read_13/DisableCopyOnReadDisableCopyOnRead3read_13_disablecopyonread_lstm_22_lstm_cell_22_bias"/device:CPU:0*
_output_shapes
 ±
Read_13/ReadVariableOpReadVariableOp3read_13_disablecopyonread_lstm_22_lstm_cell_22_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@К
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_lstm_23_lstm_cell_23_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_lstm_23_lstm_cell_23_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ф
Read_15/DisableCopyOnReadDisableCopyOnRead?read_15_disablecopyonread_lstm_23_lstm_cell_23_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_15/ReadVariableOpReadVariableOp?read_15_disablecopyonread_lstm_23_lstm_cell_23_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes

:@И
Read_16/DisableCopyOnReadDisableCopyOnRead3read_16_disablecopyonread_lstm_23_lstm_cell_23_bias"/device:CPU:0*
_output_shapes
 ±
Read_16/ReadVariableOpReadVariableOp3read_16_disablecopyonread_lstm_23_lstm_cell_23_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_17/DisableCopyOnReadDisableCopyOnRead#read_17_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_17/ReadVariableOpReadVariableOp#read_17_disablecopyonread_iteration^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_18/DisableCopyOnReadDisableCopyOnRead'read_18_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_18/ReadVariableOpReadVariableOp'read_18_disablecopyonread_learning_rate^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: С
Read_19/DisableCopyOnReadDisableCopyOnRead<read_19_disablecopyonread_adam_m_lstm_21_lstm_cell_21_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_19/ReadVariableOpReadVariableOp<read_19_disablecopyonread_adam_m_lstm_21_lstm_cell_21_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes

:@С
Read_20/DisableCopyOnReadDisableCopyOnRead<read_20_disablecopyonread_adam_v_lstm_21_lstm_cell_21_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_20/ReadVariableOpReadVariableOp<read_20_disablecopyonread_adam_v_lstm_21_lstm_cell_21_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_adam_m_lstm_21_lstm_cell_21_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_adam_m_lstm_21_lstm_cell_21_recurrent_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_22/DisableCopyOnReadDisableCopyOnReadFread_22_disablecopyonread_adam_v_lstm_21_lstm_cell_21_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_22/ReadVariableOpReadVariableOpFread_22_disablecopyonread_adam_v_lstm_21_lstm_cell_21_recurrent_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes

:@П
Read_23/DisableCopyOnReadDisableCopyOnRead:read_23_disablecopyonread_adam_m_lstm_21_lstm_cell_21_bias"/device:CPU:0*
_output_shapes
 Є
Read_23/ReadVariableOpReadVariableOp:read_23_disablecopyonread_adam_m_lstm_21_lstm_cell_21_bias^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_24/DisableCopyOnReadDisableCopyOnRead:read_24_disablecopyonread_adam_v_lstm_21_lstm_cell_21_bias"/device:CPU:0*
_output_shapes
 Є
Read_24/ReadVariableOpReadVariableOp:read_24_disablecopyonread_adam_v_lstm_21_lstm_cell_21_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_25/DisableCopyOnReadDisableCopyOnRead<read_25_disablecopyonread_adam_m_lstm_22_lstm_cell_22_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_25/ReadVariableOpReadVariableOp<read_25_disablecopyonread_adam_m_lstm_22_lstm_cell_22_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes

:@С
Read_26/DisableCopyOnReadDisableCopyOnRead<read_26_disablecopyonread_adam_v_lstm_22_lstm_cell_22_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_26/ReadVariableOpReadVariableOp<read_26_disablecopyonread_adam_v_lstm_22_lstm_cell_22_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_27/DisableCopyOnReadDisableCopyOnReadFread_27_disablecopyonread_adam_m_lstm_22_lstm_cell_22_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_27/ReadVariableOpReadVariableOpFread_27_disablecopyonread_adam_m_lstm_22_lstm_cell_22_recurrent_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_28/DisableCopyOnReadDisableCopyOnReadFread_28_disablecopyonread_adam_v_lstm_22_lstm_cell_22_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_28/ReadVariableOpReadVariableOpFread_28_disablecopyonread_adam_v_lstm_22_lstm_cell_22_recurrent_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

:@П
Read_29/DisableCopyOnReadDisableCopyOnRead:read_29_disablecopyonread_adam_m_lstm_22_lstm_cell_22_bias"/device:CPU:0*
_output_shapes
 Є
Read_29/ReadVariableOpReadVariableOp:read_29_disablecopyonread_adam_m_lstm_22_lstm_cell_22_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_30/DisableCopyOnReadDisableCopyOnRead:read_30_disablecopyonread_adam_v_lstm_22_lstm_cell_22_bias"/device:CPU:0*
_output_shapes
 Є
Read_30/ReadVariableOpReadVariableOp:read_30_disablecopyonread_adam_v_lstm_22_lstm_cell_22_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
:@С
Read_31/DisableCopyOnReadDisableCopyOnRead<read_31_disablecopyonread_adam_m_lstm_23_lstm_cell_23_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_31/ReadVariableOpReadVariableOp<read_31_disablecopyonread_adam_m_lstm_23_lstm_cell_23_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes

:@С
Read_32/DisableCopyOnReadDisableCopyOnRead<read_32_disablecopyonread_adam_v_lstm_23_lstm_cell_23_kernel"/device:CPU:0*
_output_shapes
 Њ
Read_32/ReadVariableOpReadVariableOp<read_32_disablecopyonread_adam_v_lstm_23_lstm_cell_23_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_33/DisableCopyOnReadDisableCopyOnReadFread_33_disablecopyonread_adam_m_lstm_23_lstm_cell_23_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_33/ReadVariableOpReadVariableOpFread_33_disablecopyonread_adam_m_lstm_23_lstm_cell_23_recurrent_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes

:@Ы
Read_34/DisableCopyOnReadDisableCopyOnReadFread_34_disablecopyonread_adam_v_lstm_23_lstm_cell_23_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_34/ReadVariableOpReadVariableOpFread_34_disablecopyonread_adam_v_lstm_23_lstm_cell_23_recurrent_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes

:@П
Read_35/DisableCopyOnReadDisableCopyOnRead:read_35_disablecopyonread_adam_m_lstm_23_lstm_cell_23_bias"/device:CPU:0*
_output_shapes
 Є
Read_35/ReadVariableOpReadVariableOp:read_35_disablecopyonread_adam_m_lstm_23_lstm_cell_23_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_36/DisableCopyOnReadDisableCopyOnRead:read_36_disablecopyonread_adam_v_lstm_23_lstm_cell_23_bias"/device:CPU:0*
_output_shapes
 Є
Read_36/ReadVariableOpReadVariableOp:read_36_disablecopyonread_adam_v_lstm_23_lstm_cell_23_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_37/DisableCopyOnReadDisableCopyOnRead0read_37_disablecopyonread_adam_m_dense_18_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_37/ReadVariableOpReadVariableOp0read_37_disablecopyonread_adam_m_dense_18_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes

:Е
Read_38/DisableCopyOnReadDisableCopyOnRead0read_38_disablecopyonread_adam_v_dense_18_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_38/ReadVariableOpReadVariableOp0read_38_disablecopyonread_adam_v_dense_18_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes

:Г
Read_39/DisableCopyOnReadDisableCopyOnRead.read_39_disablecopyonread_adam_m_dense_18_bias"/device:CPU:0*
_output_shapes
 ђ
Read_39/ReadVariableOpReadVariableOp.read_39_disablecopyonread_adam_m_dense_18_bias^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_40/DisableCopyOnReadDisableCopyOnRead.read_40_disablecopyonread_adam_v_dense_18_bias"/device:CPU:0*
_output_shapes
 ђ
Read_40/ReadVariableOpReadVariableOp.read_40_disablecopyonread_adam_v_dense_18_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_41/DisableCopyOnReadDisableCopyOnRead0read_41_disablecopyonread_adam_m_dense_19_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_41/ReadVariableOpReadVariableOp0read_41_disablecopyonread_adam_m_dense_19_kernel^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes

:Е
Read_42/DisableCopyOnReadDisableCopyOnRead0read_42_disablecopyonread_adam_v_dense_19_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_42/ReadVariableOpReadVariableOp0read_42_disablecopyonread_adam_v_dense_19_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes

:Г
Read_43/DisableCopyOnReadDisableCopyOnRead.read_43_disablecopyonread_adam_m_dense_19_bias"/device:CPU:0*
_output_shapes
 ђ
Read_43/ReadVariableOpReadVariableOp.read_43_disablecopyonread_adam_m_dense_19_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_44/DisableCopyOnReadDisableCopyOnRead.read_44_disablecopyonread_adam_v_dense_19_bias"/device:CPU:0*
_output_shapes
 ђ
Read_44/ReadVariableOpReadVariableOp.read_44_disablecopyonread_adam_v_dense_19_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_45/DisableCopyOnReadDisableCopyOnRead0read_45_disablecopyonread_adam_m_dense_20_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_45/ReadVariableOpReadVariableOp0read_45_disablecopyonread_adam_m_dense_20_kernel^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes

:Е
Read_46/DisableCopyOnReadDisableCopyOnRead0read_46_disablecopyonread_adam_v_dense_20_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_46/ReadVariableOpReadVariableOp0read_46_disablecopyonread_adam_v_dense_20_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

:Г
Read_47/DisableCopyOnReadDisableCopyOnRead.read_47_disablecopyonread_adam_m_dense_20_bias"/device:CPU:0*
_output_shapes
 ђ
Read_47/ReadVariableOpReadVariableOp.read_47_disablecopyonread_adam_m_dense_20_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_48/DisableCopyOnReadDisableCopyOnRead.read_48_disablecopyonread_adam_v_dense_20_bias"/device:CPU:0*
_output_shapes
 ђ
Read_48/ReadVariableOpReadVariableOp.read_48_disablecopyonread_adam_v_dense_20_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_49/DisableCopyOnReadDisableCopyOnRead0read_49_disablecopyonread_adam_m_dense_21_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_49/ReadVariableOpReadVariableOp0read_49_disablecopyonread_adam_m_dense_21_kernel^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0o
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:e
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes

:Е
Read_50/DisableCopyOnReadDisableCopyOnRead0read_50_disablecopyonread_adam_v_dense_21_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_50/ReadVariableOpReadVariableOp0read_50_disablecopyonread_adam_v_dense_21_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:*
dtype0p
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:g
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes

:Г
Read_51/DisableCopyOnReadDisableCopyOnRead.read_51_disablecopyonread_adam_m_dense_21_bias"/device:CPU:0*
_output_shapes
 ђ
Read_51/ReadVariableOpReadVariableOp.read_51_disablecopyonread_adam_m_dense_21_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:Г
Read_52/DisableCopyOnReadDisableCopyOnRead.read_52_disablecopyonread_adam_v_dense_21_bias"/device:CPU:0*
_output_shapes
 ђ
Read_52/ReadVariableOpReadVariableOp.read_52_disablecopyonread_adam_v_dense_21_bias^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_53/DisableCopyOnReadDisableCopyOnRead!read_53_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_53/ReadVariableOpReadVariableOp!read_53_disablecopyonread_total_1^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_54/DisableCopyOnReadDisableCopyOnRead!read_54_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_54/ReadVariableOpReadVariableOp!read_54_disablecopyonread_count_1^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_55/DisableCopyOnReadDisableCopyOnReadread_55_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_55/ReadVariableOpReadVariableOpread_55_disablecopyonread_total^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_56/DisableCopyOnReadDisableCopyOnReadread_56_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_56/ReadVariableOpReadVariableOpread_56_disablecopyonread_count^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
: »
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*с
valueзBд:B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHв
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B щ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *H
dtypes>
<2:	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_114Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_115IdentityIdentity_114:output:0^NoOp*
T0*
_output_shapes
: Р
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "%
identity_115Identity_115:output:0*Й
_input_shapesx
v: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix::

_output_shapes
: 
ќC
 

lstm_23_while_body_284762,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3+
'lstm_23_while_lstm_23_strided_slice_1_0g
clstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:@O
=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:@J
<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:@
lstm_23_while_identity
lstm_23_while_identity_1
lstm_23_while_identity_2
lstm_23_while_identity_3
lstm_23_while_identity_4
lstm_23_while_identity_5)
%lstm_23_while_lstm_23_strided_slice_1e
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorK
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:@M
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:@H
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpҐ0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpҐ2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpР
?lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0lstm_23_while_placeholderHlstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_23/while/lstm_cell_23/MatMulMatMul8lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_23/while/lstm_cell_23/MatMul_1MatMullstm_23_while_placeholder_2:lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_23/while/lstm_cell_23/addAddV2+lstm_23/while/lstm_cell_23/MatMul:product:0-lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_23/while/lstm_cell_23/BiasAddBiasAdd"lstm_23/while/lstm_cell_23/add:z:09lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_23/while/lstm_cell_23/splitSplit3lstm_23/while/lstm_cell_23/split/split_dim:output:0+lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_23/while/lstm_cell_23/SigmoidSigmoid)lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_23/while/lstm_cell_23/mulMul(lstm_23/while/lstm_cell_23/Sigmoid_1:y:0lstm_23_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_23/while/lstm_cell_23/ReluRelu)lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_23/while/lstm_cell_23/mul_1Mul&lstm_23/while/lstm_cell_23/Sigmoid:y:0-lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_23/while/lstm_cell_23/add_1AddV2"lstm_23/while/lstm_cell_23/mul:z:0$lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_23/while/lstm_cell_23/Relu_1Relu$lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_23/while/lstm_cell_23/mul_2Mul(lstm_23/while/lstm_cell_23/Sigmoid_2:y:0/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€z
8lstm_23/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_23_while_placeholder_1Alstm_23/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_23/while/addAddV2lstm_23_while_placeholderlstm_23/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_23/while/add_1AddV2(lstm_23_while_lstm_23_while_loop_counterlstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_23/while/IdentityIdentitylstm_23/while/add_1:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: К
lstm_23/while/Identity_1Identity.lstm_23_while_lstm_23_while_maximum_iterations^lstm_23/while/NoOp*
T0*
_output_shapes
: q
lstm_23/while/Identity_2Identitylstm_23/while/add:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: Ю
lstm_23/while/Identity_3IdentityBlstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_23/while/NoOp*
T0*
_output_shapes
: С
lstm_23/while/Identity_4Identity$lstm_23/while/lstm_cell_23/mul_2:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_23/while/Identity_5Identity$lstm_23/while/lstm_cell_23/add_1:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_23/while/NoOpNoOp2^lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_23_while_identitylstm_23/while/Identity:output:0"=
lstm_23_while_identity_1!lstm_23/while/Identity_1:output:0"=
lstm_23_while_identity_2!lstm_23/while/Identity_2:output:0"=
lstm_23_while_identity_3!lstm_23/while/Identity_3:output:0"=
lstm_23_while_identity_4!lstm_23/while/Identity_4:output:0"=
lstm_23_while_identity_5!lstm_23/while/Identity_5:output:0"P
%lstm_23_while_lstm_23_strided_slice_1'lstm_23_while_lstm_23_strided_slice_1_0"z
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"»
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_23/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
мQ
л
&sequential_7_lstm_22_while_body_281425F
Bsequential_7_lstm_22_while_sequential_7_lstm_22_while_loop_counterL
Hsequential_7_lstm_22_while_sequential_7_lstm_22_while_maximum_iterations*
&sequential_7_lstm_22_while_placeholder,
(sequential_7_lstm_22_while_placeholder_1,
(sequential_7_lstm_22_while_placeholder_2,
(sequential_7_lstm_22_while_placeholder_3E
Asequential_7_lstm_22_while_sequential_7_lstm_22_strided_slice_1_0Б
}sequential_7_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_22_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_7_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:@\
Jsequential_7_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:@W
Isequential_7_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:@'
#sequential_7_lstm_22_while_identity)
%sequential_7_lstm_22_while_identity_1)
%sequential_7_lstm_22_while_identity_2)
%sequential_7_lstm_22_while_identity_3)
%sequential_7_lstm_22_while_identity_4)
%sequential_7_lstm_22_while_identity_5C
?sequential_7_lstm_22_while_sequential_7_lstm_22_strided_slice_1
{sequential_7_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_22_tensorarrayunstack_tensorlistfromtensorX
Fsequential_7_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:@Z
Hsequential_7_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:@U
Gsequential_7_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ>sequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ=sequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ?sequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpЭ
Lsequential_7/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   П
>sequential_7/lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_7_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_22_tensorarrayunstack_tensorlistfromtensor_0&sequential_7_lstm_22_while_placeholderUsequential_7/lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0∆
=sequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOpHsequential_7_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0ш
.sequential_7/lstm_22/while/lstm_cell_22/MatMulMatMulEsequential_7/lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
?sequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpJsequential_7_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0я
0sequential_7/lstm_22/while/lstm_cell_22/MatMul_1MatMul(sequential_7_lstm_22_while_placeholder_2Gsequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@№
+sequential_7/lstm_22/while/lstm_cell_22/addAddV28sequential_7/lstm_22/while/lstm_cell_22/MatMul:product:0:sequential_7/lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ƒ
>sequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpIsequential_7_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0е
/sequential_7/lstm_22/while/lstm_cell_22/BiasAddBiasAdd/sequential_7/lstm_22/while/lstm_cell_22/add:z:0Fsequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@y
7sequential_7/lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_7/lstm_22/while/lstm_cell_22/splitSplit@sequential_7/lstm_22/while/lstm_cell_22/split/split_dim:output:08sequential_7/lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split§
/sequential_7/lstm_22/while/lstm_cell_22/SigmoidSigmoid6sequential_7/lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid6sequential_7/lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€≈
+sequential_7/lstm_22/while/lstm_cell_22/mulMul5sequential_7/lstm_22/while/lstm_cell_22/Sigmoid_1:y:0(sequential_7_lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/lstm_22/while/lstm_cell_22/ReluRelu6sequential_7/lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€„
-sequential_7/lstm_22/while/lstm_cell_22/mul_1Mul3sequential_7/lstm_22/while/lstm_cell_22/Sigmoid:y:0:sequential_7/lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
-sequential_7/lstm_22/while/lstm_cell_22/add_1AddV2/sequential_7/lstm_22/while/lstm_cell_22/mul:z:01sequential_7/lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid6sequential_7/lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ы
.sequential_7/lstm_22/while/lstm_cell_22/Relu_1Relu1sequential_7/lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€џ
-sequential_7/lstm_22/while/lstm_cell_22/mul_2Mul5sequential_7/lstm_22/while/lstm_cell_22/Sigmoid_2:y:0<sequential_7/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Щ
?sequential_7/lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_7_lstm_22_while_placeholder_1&sequential_7_lstm_22_while_placeholder1sequential_7/lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_7/lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_7/lstm_22/while/addAddV2&sequential_7_lstm_22_while_placeholder)sequential_7/lstm_22/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_7/lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_7/lstm_22/while/add_1AddV2Bsequential_7_lstm_22_while_sequential_7_lstm_22_while_loop_counter+sequential_7/lstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_7/lstm_22/while/IdentityIdentity$sequential_7/lstm_22/while/add_1:z:0 ^sequential_7/lstm_22/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_7/lstm_22/while/Identity_1IdentityHsequential_7_lstm_22_while_sequential_7_lstm_22_while_maximum_iterations ^sequential_7/lstm_22/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_7/lstm_22/while/Identity_2Identity"sequential_7/lstm_22/while/add:z:0 ^sequential_7/lstm_22/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_7/lstm_22/while/Identity_3IdentityOsequential_7/lstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_7/lstm_22/while/NoOp*
T0*
_output_shapes
: Є
%sequential_7/lstm_22/while/Identity_4Identity1sequential_7/lstm_22/while/lstm_cell_22/mul_2:z:0 ^sequential_7/lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
%sequential_7/lstm_22/while/Identity_5Identity1sequential_7/lstm_22/while/lstm_cell_22/add_1:z:0 ^sequential_7/lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€§
sequential_7/lstm_22/while/NoOpNoOp?^sequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp>^sequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp@^sequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_7_lstm_22_while_identity,sequential_7/lstm_22/while/Identity:output:0"W
%sequential_7_lstm_22_while_identity_1.sequential_7/lstm_22/while/Identity_1:output:0"W
%sequential_7_lstm_22_while_identity_2.sequential_7/lstm_22/while/Identity_2:output:0"W
%sequential_7_lstm_22_while_identity_3.sequential_7/lstm_22/while/Identity_3:output:0"W
%sequential_7_lstm_22_while_identity_4.sequential_7/lstm_22/while/Identity_4:output:0"W
%sequential_7_lstm_22_while_identity_5.sequential_7/lstm_22/while/Identity_5:output:0"Ф
Gsequential_7_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resourceIsequential_7_lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"Ц
Hsequential_7_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resourceJsequential_7_lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"Т
Fsequential_7_lstm_22_while_lstm_cell_22_matmul_readvariableop_resourceHsequential_7_lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"Д
?sequential_7_lstm_22_while_sequential_7_lstm_22_strided_slice_1Asequential_7_lstm_22_while_sequential_7_lstm_22_strided_slice_1_0"ь
{sequential_7_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_22_tensorarrayunstack_tensorlistfromtensor}sequential_7_lstm_22_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2А
>sequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp>sequential_7/lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2~
=sequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp=sequential_7/lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2В
?sequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp?sequential_7/lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_22/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
”
Г
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287753

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Ч	
√
while_cond_287041
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_287041___redundant_placeholder04
0while_while_cond_287041___redundant_placeholder14
0while_while_cond_287041___redundant_placeholder24
0while_while_cond_287041___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ћ
Б
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282096

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Ђ8
В
C__inference_lstm_21_layer_call_and_return_conditional_losses_281829

inputs%
lstm_cell_21_281747:@%
lstm_cell_21_281749:@!
lstm_cell_21_281751:@
identityИҐ$lstm_cell_21/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_281747lstm_cell_21_281749lstm_cell_21_281751*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281746n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_281747lstm_cell_21_281749lstm_cell_21_281751*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_281760*
condR
while_cond_281759*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€u
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
и
у
-__inference_lstm_cell_22_layer_call_fn_287574

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282096o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Ч	
√
while_cond_281904
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_281904___redundant_placeholder04
0while_while_cond_281904___redundant_placeholder14
0while_while_cond_281904___redundant_placeholder24
0while_while_cond_281904___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ч	
√
while_cond_283560
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_283560___redundant_placeholder04
0while_while_cond_283560___redundant_placeholder14
0while_while_cond_283560___redundant_placeholder24
0while_while_cond_283560___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ф
≤
(__inference_lstm_23_layer_call_fn_286681

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283212o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_283126
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_283126___redundant_placeholder04
0while_while_cond_283126___redundant_placeholder14
0while_while_cond_283126___redundant_placeholder24
0while_while_cond_283126___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ч	
√
while_cond_282109
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282109___redundant_placeholder04
0while_while_cond_282109___redundant_placeholder14
0while_while_cond_282109___redundant_placeholder24
0while_while_cond_282109___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ћ
Б
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282446

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
ў
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_283848

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
О
з
&sequential_7_lstm_22_while_cond_281424F
Bsequential_7_lstm_22_while_sequential_7_lstm_22_while_loop_counterL
Hsequential_7_lstm_22_while_sequential_7_lstm_22_while_maximum_iterations*
&sequential_7_lstm_22_while_placeholder,
(sequential_7_lstm_22_while_placeholder_1,
(sequential_7_lstm_22_while_placeholder_2,
(sequential_7_lstm_22_while_placeholder_3H
Dsequential_7_lstm_22_while_less_sequential_7_lstm_22_strided_slice_1^
Zsequential_7_lstm_22_while_sequential_7_lstm_22_while_cond_281424___redundant_placeholder0^
Zsequential_7_lstm_22_while_sequential_7_lstm_22_while_cond_281424___redundant_placeholder1^
Zsequential_7_lstm_22_while_sequential_7_lstm_22_while_cond_281424___redundant_placeholder2^
Zsequential_7_lstm_22_while_sequential_7_lstm_22_while_cond_281424___redundant_placeholder3'
#sequential_7_lstm_22_while_identity
ґ
sequential_7/lstm_22/while/LessLess&sequential_7_lstm_22_while_placeholderDsequential_7_lstm_22_while_less_sequential_7_lstm_22_strided_slice_1*
T0*
_output_shapes
: u
#sequential_7/lstm_22/while/IdentityIdentity#sequential_7/lstm_22/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_7_lstm_22_while_identity,sequential_7/lstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_22/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Г
d
+__inference_dropout_32_layer_call_fn_285983

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_282902s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_283404
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_283404___redundant_placeholder04
0while_while_cond_283404___redundant_placeholder14
0while_while_cond_283404___redundant_placeholder24
0while_while_cond_283404___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ќC
 

lstm_23_while_body_285246,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3+
'lstm_23_while_lstm_23_strided_slice_1_0g
clstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:@O
=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:@J
<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:@
lstm_23_while_identity
lstm_23_while_identity_1
lstm_23_while_identity_2
lstm_23_while_identity_3
lstm_23_while_identity_4
lstm_23_while_identity_5)
%lstm_23_while_lstm_23_strided_slice_1e
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorK
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:@M
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:@H
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpҐ0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpҐ2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpР
?lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0lstm_23_while_placeholderHlstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_23/while/lstm_cell_23/MatMulMatMul8lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_23/while/lstm_cell_23/MatMul_1MatMullstm_23_while_placeholder_2:lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_23/while/lstm_cell_23/addAddV2+lstm_23/while/lstm_cell_23/MatMul:product:0-lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_23/while/lstm_cell_23/BiasAddBiasAdd"lstm_23/while/lstm_cell_23/add:z:09lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_23/while/lstm_cell_23/splitSplit3lstm_23/while/lstm_cell_23/split/split_dim:output:0+lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_23/while/lstm_cell_23/SigmoidSigmoid)lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid)lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_23/while/lstm_cell_23/mulMul(lstm_23/while/lstm_cell_23/Sigmoid_1:y:0lstm_23_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_23/while/lstm_cell_23/ReluRelu)lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_23/while/lstm_cell_23/mul_1Mul&lstm_23/while/lstm_cell_23/Sigmoid:y:0-lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_23/while/lstm_cell_23/add_1AddV2"lstm_23/while/lstm_cell_23/mul:z:0$lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid)lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_23/while/lstm_cell_23/Relu_1Relu$lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_23/while/lstm_cell_23/mul_2Mul(lstm_23/while/lstm_cell_23/Sigmoid_2:y:0/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€z
8lstm_23/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Н
2lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_23_while_placeholder_1Alstm_23/while/TensorArrayV2Write/TensorListSetItem/index:output:0$lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_23/while/addAddV2lstm_23_while_placeholderlstm_23/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_23/while/add_1AddV2(lstm_23_while_lstm_23_while_loop_counterlstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_23/while/IdentityIdentitylstm_23/while/add_1:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: К
lstm_23/while/Identity_1Identity.lstm_23_while_lstm_23_while_maximum_iterations^lstm_23/while/NoOp*
T0*
_output_shapes
: q
lstm_23/while/Identity_2Identitylstm_23/while/add:z:0^lstm_23/while/NoOp*
T0*
_output_shapes
: Ю
lstm_23/while/Identity_3IdentityBlstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_23/while/NoOp*
T0*
_output_shapes
: С
lstm_23/while/Identity_4Identity$lstm_23/while/lstm_cell_23/mul_2:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_23/while/Identity_5Identity$lstm_23/while/lstm_cell_23/add_1:z:0^lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_23/while/NoOpNoOp2^lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1^lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp3^lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_23_while_identitylstm_23/while/Identity:output:0"=
lstm_23_while_identity_1!lstm_23/while/Identity_1:output:0"=
lstm_23_while_identity_2!lstm_23/while/Identity_2:output:0"=
lstm_23_while_identity_3!lstm_23/while/Identity_3:output:0"=
lstm_23_while_identity_4!lstm_23/while/Identity_4:output:0"=
lstm_23_while_identity_5!lstm_23/while/Identity_5:output:0"P
%lstm_23_while_lstm_23_strided_slice_1'lstm_23_while_lstm_23_strided_slice_1_0"z
:lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource<lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"|
;lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource=lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"x
9lstm_23_while_lstm_cell_23_matmul_readvariableop_resource;lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"»
alstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensorclstm_23_while_tensorarrayv2read_tensorlistgetitem_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp1lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2d
0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp0lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2h
2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp2lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_23/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
О
з
&sequential_7_lstm_21_while_cond_281284F
Bsequential_7_lstm_21_while_sequential_7_lstm_21_while_loop_counterL
Hsequential_7_lstm_21_while_sequential_7_lstm_21_while_maximum_iterations*
&sequential_7_lstm_21_while_placeholder,
(sequential_7_lstm_21_while_placeholder_1,
(sequential_7_lstm_21_while_placeholder_2,
(sequential_7_lstm_21_while_placeholder_3H
Dsequential_7_lstm_21_while_less_sequential_7_lstm_21_strided_slice_1^
Zsequential_7_lstm_21_while_sequential_7_lstm_21_while_cond_281284___redundant_placeholder0^
Zsequential_7_lstm_21_while_sequential_7_lstm_21_while_cond_281284___redundant_placeholder1^
Zsequential_7_lstm_21_while_sequential_7_lstm_21_while_cond_281284___redundant_placeholder2^
Zsequential_7_lstm_21_while_sequential_7_lstm_21_while_cond_281284___redundant_placeholder3'
#sequential_7_lstm_21_while_identity
ґ
sequential_7/lstm_21/while/LessLess&sequential_7_lstm_21_while_placeholderDsequential_7_lstm_21_while_less_sequential_7_lstm_21_strided_slice_1*
T0*
_output_shapes
: u
#sequential_7/lstm_21/while/IdentityIdentity#sequential_7/lstm_21/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_7_lstm_21_while_identity,sequential_7/lstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_21/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
°
G
+__inference_dropout_35_layer_call_fn_287329

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283826`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ў
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_283826

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё$
Ё
while_body_282608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_23_282632_0:@-
while_lstm_cell_23_282634_0:@)
while_lstm_cell_23_282636_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_23_282632:@+
while_lstm_cell_23_282634:@'
while_lstm_cell_23_282636:@ИҐ*while/lstm_cell_23/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_282632_0while_lstm_cell_23_282634_0while_lstm_cell_23_282636_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282593r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_23/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_282632while_lstm_cell_23_282632_0"8
while_lstm_cell_23_282634while_lstm_cell_23_282634_0"8
while_lstm_cell_23_282636while_lstm_cell_23_282636_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ў
d
F__inference_dropout_35_layer_call_and_return_conditional_losses_287346

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_285465
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
б8
 
while_body_282962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ь
≤
(__inference_lstm_21_layer_call_fn_285406

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_283489s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_283717
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_283717___redundant_placeholder04
0while_while_cond_283717___redundant_placeholder14
0while_while_cond_283717___redundant_placeholder24
0while_while_cond_283717___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ђ8
В
C__inference_lstm_21_layer_call_and_return_conditional_losses_281974

inputs%
lstm_cell_21_281892:@%
lstm_cell_21_281894:@!
lstm_cell_21_281896:@
identityИҐ$lstm_cell_21/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_281892lstm_cell_21_281894lstm_cell_21_281896*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281891n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_281892lstm_cell_21_281894lstm_cell_21_281896*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_281905*
condR
while_cond_281904*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€u
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
¶@
е
H__inference_sequential_7_layer_call_and_return_conditional_losses_283910

inputs 
lstm_21_283862:@ 
lstm_21_283864:@
lstm_21_283866:@ 
lstm_22_283870:@ 
lstm_22_283872:@
lstm_22_283874:@ 
lstm_23_283878:@ 
lstm_23_283880:@
lstm_23_283882:@!
dense_18_283886:
dense_18_283888:!
dense_19_283892:
dense_19_283894:!
dense_20_283898:
dense_20_283900:!
dense_21_283904:
dense_21_283906:
identityИҐ dense_18/StatefulPartitionedCallҐ dense_19/StatefulPartitionedCallҐ dense_20/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ"dropout_32/StatefulPartitionedCallҐ"dropout_33/StatefulPartitionedCallҐ"dropout_34/StatefulPartitionedCallҐ"dropout_35/StatefulPartitionedCallҐ"dropout_36/StatefulPartitionedCallҐ"dropout_37/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallҐlstm_23/StatefulPartitionedCallВ
lstm_21/StatefulPartitionedCallStatefulPartitionedCallinputslstm_21_283862lstm_21_283864lstm_21_283866*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_282882т
"dropout_32/StatefulPartitionedCallStatefulPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_282902І
lstm_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_32/StatefulPartitionedCall:output:0lstm_22_283870lstm_22_283872lstm_22_283874*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283046Ч
"dropout_33/StatefulPartitionedCallStatefulPartitionedCall(lstm_22/StatefulPartitionedCall:output:0#^dropout_32/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283066£
lstm_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_33/StatefulPartitionedCall:output:0lstm_23_283878lstm_23_283880lstm_23_283882*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283212У
"dropout_34/StatefulPartitionedCallStatefulPartitionedCall(lstm_23/StatefulPartitionedCall:output:0#^dropout_33/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283232Х
 dense_18/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_18_283886dense_18_283888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_283245Ф
"dropout_35/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0#^dropout_34/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283263Х
 dense_19/StatefulPartitionedCallStatefulPartitionedCall+dropout_35/StatefulPartitionedCall:output:0dense_19_283892dense_19_283894*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_283276Ф
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)dense_19/StatefulPartitionedCall:output:0#^dropout_35/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283294Х
 dense_20/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0dense_20_283898dense_20_283900*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_283307Ф
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)dense_20/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283325Х
 dense_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0dense_21_283904dense_21_283906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_283337x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ц
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall#^dropout_32/StatefulPartitionedCall#^dropout_33/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall#^dropout_35/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2H
"dropout_32/StatefulPartitionedCall"dropout_32/StatefulPartitionedCall2H
"dropout_33/StatefulPartitionedCall"dropout_33/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall2H
"dropout_35/StatefulPartitionedCall"dropout_35/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µJ
Ш
C__inference_lstm_21_layer_call_and_return_conditional_losses_285978

inputs=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_285894*
condR
while_cond_285893*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
п
¬
-__inference_sequential_7_layer_call_fn_283947
lstm_21_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityИҐStatefulPartitionedCall≠
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_283910o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
ф
≤
(__inference_lstm_23_layer_call_fn_286692

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283803o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
мQ
л
&sequential_7_lstm_21_while_body_281285F
Bsequential_7_lstm_21_while_sequential_7_lstm_21_while_loop_counterL
Hsequential_7_lstm_21_while_sequential_7_lstm_21_while_maximum_iterations*
&sequential_7_lstm_21_while_placeholder,
(sequential_7_lstm_21_while_placeholder_1,
(sequential_7_lstm_21_while_placeholder_2,
(sequential_7_lstm_21_while_placeholder_3E
Asequential_7_lstm_21_while_sequential_7_lstm_21_strided_slice_1_0Б
}sequential_7_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_21_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_7_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:@\
Jsequential_7_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:@W
Isequential_7_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:@'
#sequential_7_lstm_21_while_identity)
%sequential_7_lstm_21_while_identity_1)
%sequential_7_lstm_21_while_identity_2)
%sequential_7_lstm_21_while_identity_3)
%sequential_7_lstm_21_while_identity_4)
%sequential_7_lstm_21_while_identity_5C
?sequential_7_lstm_21_while_sequential_7_lstm_21_strided_slice_1
{sequential_7_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_21_tensorarrayunstack_tensorlistfromtensorX
Fsequential_7_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:@Z
Hsequential_7_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:@U
Gsequential_7_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ>sequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ=sequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ?sequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpЭ
Lsequential_7/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   П
>sequential_7/lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_7_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_21_tensorarrayunstack_tensorlistfromtensor_0&sequential_7_lstm_21_while_placeholderUsequential_7/lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0∆
=sequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOpHsequential_7_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0ш
.sequential_7/lstm_21/while/lstm_cell_21/MatMulMatMulEsequential_7/lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
?sequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpJsequential_7_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0я
0sequential_7/lstm_21/while/lstm_cell_21/MatMul_1MatMul(sequential_7_lstm_21_while_placeholder_2Gsequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@№
+sequential_7/lstm_21/while/lstm_cell_21/addAddV28sequential_7/lstm_21/while/lstm_cell_21/MatMul:product:0:sequential_7/lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ƒ
>sequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpIsequential_7_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0е
/sequential_7/lstm_21/while/lstm_cell_21/BiasAddBiasAdd/sequential_7/lstm_21/while/lstm_cell_21/add:z:0Fsequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@y
7sequential_7/lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_7/lstm_21/while/lstm_cell_21/splitSplit@sequential_7/lstm_21/while/lstm_cell_21/split/split_dim:output:08sequential_7/lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split§
/sequential_7/lstm_21/while/lstm_cell_21/SigmoidSigmoid6sequential_7/lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid6sequential_7/lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€≈
+sequential_7/lstm_21/while/lstm_cell_21/mulMul5sequential_7/lstm_21/while/lstm_cell_21/Sigmoid_1:y:0(sequential_7_lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/lstm_21/while/lstm_cell_21/ReluRelu6sequential_7/lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€„
-sequential_7/lstm_21/while/lstm_cell_21/mul_1Mul3sequential_7/lstm_21/while/lstm_cell_21/Sigmoid:y:0:sequential_7/lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
-sequential_7/lstm_21/while/lstm_cell_21/add_1AddV2/sequential_7/lstm_21/while/lstm_cell_21/mul:z:01sequential_7/lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid6sequential_7/lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ы
.sequential_7/lstm_21/while/lstm_cell_21/Relu_1Relu1sequential_7/lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€џ
-sequential_7/lstm_21/while/lstm_cell_21/mul_2Mul5sequential_7/lstm_21/while/lstm_cell_21/Sigmoid_2:y:0<sequential_7/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Щ
?sequential_7/lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_7_lstm_21_while_placeholder_1&sequential_7_lstm_21_while_placeholder1sequential_7/lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_7/lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_7/lstm_21/while/addAddV2&sequential_7_lstm_21_while_placeholder)sequential_7/lstm_21/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_7/lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_7/lstm_21/while/add_1AddV2Bsequential_7_lstm_21_while_sequential_7_lstm_21_while_loop_counter+sequential_7/lstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_7/lstm_21/while/IdentityIdentity$sequential_7/lstm_21/while/add_1:z:0 ^sequential_7/lstm_21/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_7/lstm_21/while/Identity_1IdentityHsequential_7_lstm_21_while_sequential_7_lstm_21_while_maximum_iterations ^sequential_7/lstm_21/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_7/lstm_21/while/Identity_2Identity"sequential_7/lstm_21/while/add:z:0 ^sequential_7/lstm_21/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_7/lstm_21/while/Identity_3IdentityOsequential_7/lstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_7/lstm_21/while/NoOp*
T0*
_output_shapes
: Є
%sequential_7/lstm_21/while/Identity_4Identity1sequential_7/lstm_21/while/lstm_cell_21/mul_2:z:0 ^sequential_7/lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
%sequential_7/lstm_21/while/Identity_5Identity1sequential_7/lstm_21/while/lstm_cell_21/add_1:z:0 ^sequential_7/lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€§
sequential_7/lstm_21/while/NoOpNoOp?^sequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp>^sequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp@^sequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_7_lstm_21_while_identity,sequential_7/lstm_21/while/Identity:output:0"W
%sequential_7_lstm_21_while_identity_1.sequential_7/lstm_21/while/Identity_1:output:0"W
%sequential_7_lstm_21_while_identity_2.sequential_7/lstm_21/while/Identity_2:output:0"W
%sequential_7_lstm_21_while_identity_3.sequential_7/lstm_21/while/Identity_3:output:0"W
%sequential_7_lstm_21_while_identity_4.sequential_7/lstm_21/while/Identity_4:output:0"W
%sequential_7_lstm_21_while_identity_5.sequential_7/lstm_21/while/Identity_5:output:0"Ф
Gsequential_7_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resourceIsequential_7_lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"Ц
Hsequential_7_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resourceJsequential_7_lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"Т
Fsequential_7_lstm_21_while_lstm_cell_21_matmul_readvariableop_resourceHsequential_7_lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"Д
?sequential_7_lstm_21_while_sequential_7_lstm_21_strided_slice_1Asequential_7_lstm_21_while_sequential_7_lstm_21_strided_slice_1_0"ь
{sequential_7_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_21_tensorarrayunstack_tensorlistfromtensor}sequential_7_lstm_21_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2А
>sequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp>sequential_7/lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2~
=sequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp=sequential_7/lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2В
?sequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp?sequential_7/lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_21/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
И
г
lstm_23_while_cond_285245,
(lstm_23_while_lstm_23_while_loop_counter2
.lstm_23_while_lstm_23_while_maximum_iterations
lstm_23_while_placeholder
lstm_23_while_placeholder_1
lstm_23_while_placeholder_2
lstm_23_while_placeholder_3.
*lstm_23_while_less_lstm_23_strided_slice_1D
@lstm_23_while_lstm_23_while_cond_285245___redundant_placeholder0D
@lstm_23_while_lstm_23_while_cond_285245___redundant_placeholder1D
@lstm_23_while_lstm_23_while_cond_285245___redundant_placeholder2D
@lstm_23_while_lstm_23_while_cond_285245___redundant_placeholder3
lstm_23_while_identity
В
lstm_23/while/LessLesslstm_23_while_placeholder*lstm_23_while_less_lstm_23_strided_slice_1*
T0*
_output_shapes
: [
lstm_23/while/IdentityIdentitylstm_23/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_23_while_identitylstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_23/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
µJ
Ш
C__inference_lstm_22_layer_call_and_return_conditional_losses_283046

inputs=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282962*
condR
while_cond_282961*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ћ
Б
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282593

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
”
Г
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287525

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
у
d
+__inference_dropout_34_layer_call_fn_287277

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283232o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ґ

e
F__inference_dropout_33_layer_call_and_return_conditional_losses_283066

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µJ
Ш
C__inference_lstm_22_layer_call_and_return_conditional_losses_286478

inputs=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286394*
condR
while_cond_286393*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬#
Ё
while_body_281905
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_21_281929_0:@-
while_lstm_cell_21_281931_0:@)
while_lstm_cell_21_281933_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_21_281929:@+
while_lstm_cell_21_281931:@'
while_lstm_cell_21_281933:@ИҐ*while/lstm_cell_21/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_281929_0while_lstm_cell_21_281931_0while_lstm_cell_21_281933_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281891№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_281929while_lstm_cell_21_281929_0"8
while_lstm_cell_21_281931while_lstm_cell_21_281931_0"8
while_lstm_cell_21_281933while_lstm_cell_21_281933_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Џ
ї
-__inference_sequential_7_layer_call_fn_284369

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_283910o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
и
у
-__inference_lstm_cell_23_layer_call_fn_287689

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282593o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
Г
d
+__inference_dropout_33_layer_call_fn_286626

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283066s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
уJ
Ъ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285692
inputs_0=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_285608*
condR
while_cond_285607*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
уJ
Ъ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286335
inputs_0=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286251*
condR
while_cond_286250*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
уJ
Ъ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286192
inputs_0=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286108*
condR
while_cond_286107*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
№т
И&
"__inference__traced_restore_288299
file_prefix2
 assignvariableop_dense_18_kernel:.
 assignvariableop_1_dense_18_bias:4
"assignvariableop_2_dense_19_kernel:.
 assignvariableop_3_dense_19_bias:4
"assignvariableop_4_dense_20_kernel:.
 assignvariableop_5_dense_20_bias:4
"assignvariableop_6_dense_21_kernel:.
 assignvariableop_7_dense_21_bias:@
.assignvariableop_8_lstm_21_lstm_cell_21_kernel:@J
8assignvariableop_9_lstm_21_lstm_cell_21_recurrent_kernel:@;
-assignvariableop_10_lstm_21_lstm_cell_21_bias:@A
/assignvariableop_11_lstm_22_lstm_cell_22_kernel:@K
9assignvariableop_12_lstm_22_lstm_cell_22_recurrent_kernel:@;
-assignvariableop_13_lstm_22_lstm_cell_22_bias:@A
/assignvariableop_14_lstm_23_lstm_cell_23_kernel:@K
9assignvariableop_15_lstm_23_lstm_cell_23_recurrent_kernel:@;
-assignvariableop_16_lstm_23_lstm_cell_23_bias:@'
assignvariableop_17_iteration:	 +
!assignvariableop_18_learning_rate: H
6assignvariableop_19_adam_m_lstm_21_lstm_cell_21_kernel:@H
6assignvariableop_20_adam_v_lstm_21_lstm_cell_21_kernel:@R
@assignvariableop_21_adam_m_lstm_21_lstm_cell_21_recurrent_kernel:@R
@assignvariableop_22_adam_v_lstm_21_lstm_cell_21_recurrent_kernel:@B
4assignvariableop_23_adam_m_lstm_21_lstm_cell_21_bias:@B
4assignvariableop_24_adam_v_lstm_21_lstm_cell_21_bias:@H
6assignvariableop_25_adam_m_lstm_22_lstm_cell_22_kernel:@H
6assignvariableop_26_adam_v_lstm_22_lstm_cell_22_kernel:@R
@assignvariableop_27_adam_m_lstm_22_lstm_cell_22_recurrent_kernel:@R
@assignvariableop_28_adam_v_lstm_22_lstm_cell_22_recurrent_kernel:@B
4assignvariableop_29_adam_m_lstm_22_lstm_cell_22_bias:@B
4assignvariableop_30_adam_v_lstm_22_lstm_cell_22_bias:@H
6assignvariableop_31_adam_m_lstm_23_lstm_cell_23_kernel:@H
6assignvariableop_32_adam_v_lstm_23_lstm_cell_23_kernel:@R
@assignvariableop_33_adam_m_lstm_23_lstm_cell_23_recurrent_kernel:@R
@assignvariableop_34_adam_v_lstm_23_lstm_cell_23_recurrent_kernel:@B
4assignvariableop_35_adam_m_lstm_23_lstm_cell_23_bias:@B
4assignvariableop_36_adam_v_lstm_23_lstm_cell_23_bias:@<
*assignvariableop_37_adam_m_dense_18_kernel:<
*assignvariableop_38_adam_v_dense_18_kernel:6
(assignvariableop_39_adam_m_dense_18_bias:6
(assignvariableop_40_adam_v_dense_18_bias:<
*assignvariableop_41_adam_m_dense_19_kernel:<
*assignvariableop_42_adam_v_dense_19_kernel:6
(assignvariableop_43_adam_m_dense_19_bias:6
(assignvariableop_44_adam_v_dense_19_bias:<
*assignvariableop_45_adam_m_dense_20_kernel:<
*assignvariableop_46_adam_v_dense_20_kernel:6
(assignvariableop_47_adam_m_dense_20_bias:6
(assignvariableop_48_adam_v_dense_20_bias:<
*assignvariableop_49_adam_m_dense_21_kernel:<
*assignvariableop_50_adam_v_dense_21_kernel:6
(assignvariableop_51_adam_m_dense_21_bias:6
(assignvariableop_52_adam_v_dense_21_bias:%
assignvariableop_53_total_1: %
assignvariableop_54_count_1: #
assignvariableop_55_total: #
assignvariableop_56_count: 
identity_58ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Ћ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
::*
dtype0*с
valueзBд:B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHе
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
::*
dtype0*З
value~B|:B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B √
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ю
_output_shapesл
и::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*H
dtypes>
<2:	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_dense_18_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_18_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_19_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_19_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_20_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_20_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_21_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_21_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_8AssignVariableOp.assignvariableop_8_lstm_21_lstm_cell_21_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_9AssignVariableOp8assignvariableop_9_lstm_21_lstm_cell_21_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_10AssignVariableOp-assignvariableop_10_lstm_21_lstm_cell_21_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_11AssignVariableOp/assignvariableop_11_lstm_22_lstm_cell_22_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_12AssignVariableOp9assignvariableop_12_lstm_22_lstm_cell_22_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_13AssignVariableOp-assignvariableop_13_lstm_22_lstm_cell_22_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_14AssignVariableOp/assignvariableop_14_lstm_23_lstm_cell_23_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_15AssignVariableOp9assignvariableop_15_lstm_23_lstm_cell_23_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_16AssignVariableOp-assignvariableop_16_lstm_23_lstm_cell_23_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_17AssignVariableOpassignvariableop_17_iterationIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_18AssignVariableOp!assignvariableop_18_learning_rateIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_m_lstm_21_lstm_cell_21_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_v_lstm_21_lstm_cell_21_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_m_lstm_21_lstm_cell_21_recurrent_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_22AssignVariableOp@assignvariableop_22_adam_v_lstm_21_lstm_cell_21_recurrent_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_23AssignVariableOp4assignvariableop_23_adam_m_lstm_21_lstm_cell_21_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_v_lstm_21_lstm_cell_21_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_25AssignVariableOp6assignvariableop_25_adam_m_lstm_22_lstm_cell_22_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_v_lstm_22_lstm_cell_22_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adam_m_lstm_22_lstm_cell_22_recurrent_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_v_lstm_22_lstm_cell_22_recurrent_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_m_lstm_22_lstm_cell_22_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_v_lstm_22_lstm_cell_22_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_m_lstm_23_lstm_cell_23_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:ѕ
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_v_lstm_23_lstm_cell_23_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_33AssignVariableOp@assignvariableop_33_adam_m_lstm_23_lstm_cell_23_recurrent_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_34AssignVariableOp@assignvariableop_34_adam_v_lstm_23_lstm_cell_23_recurrent_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_35AssignVariableOp4assignvariableop_35_adam_m_lstm_23_lstm_cell_23_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_v_lstm_23_lstm_cell_23_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_m_dense_18_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_v_dense_18_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_m_dense_18_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_v_dense_18_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_m_dense_19_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_v_dense_19_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_m_dense_19_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_v_dense_19_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_45AssignVariableOp*assignvariableop_45_adam_m_dense_20_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_v_dense_20_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_m_dense_20_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_v_dense_20_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_m_dense_21_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_v_dense_21_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_m_dense_21_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_v_dense_21_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_1Identity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_1Identity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_55AssignVariableOpassignvariableop_55_totalIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_56AssignVariableOpassignvariableop_56_countIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 µ

Identity_57Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_58IdentityIdentity_57:output:0^NoOp_1*
T0*
_output_shapes
: Ґ

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_58Identity_58:output:0*З
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
б8
 
while_body_285894
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ЮS
л
&sequential_7_lstm_23_while_body_281566F
Bsequential_7_lstm_23_while_sequential_7_lstm_23_while_loop_counterL
Hsequential_7_lstm_23_while_sequential_7_lstm_23_while_maximum_iterations*
&sequential_7_lstm_23_while_placeholder,
(sequential_7_lstm_23_while_placeholder_1,
(sequential_7_lstm_23_while_placeholder_2,
(sequential_7_lstm_23_while_placeholder_3E
Asequential_7_lstm_23_while_sequential_7_lstm_23_strided_slice_1_0Б
}sequential_7_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_23_tensorarrayunstack_tensorlistfromtensor_0Z
Hsequential_7_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0:@\
Jsequential_7_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0:@W
Isequential_7_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0:@'
#sequential_7_lstm_23_while_identity)
%sequential_7_lstm_23_while_identity_1)
%sequential_7_lstm_23_while_identity_2)
%sequential_7_lstm_23_while_identity_3)
%sequential_7_lstm_23_while_identity_4)
%sequential_7_lstm_23_while_identity_5C
?sequential_7_lstm_23_while_sequential_7_lstm_23_strided_slice_1
{sequential_7_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_23_tensorarrayunstack_tensorlistfromtensorX
Fsequential_7_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource:@Z
Hsequential_7_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource:@U
Gsequential_7_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ>sequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpҐ=sequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpҐ?sequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpЭ
Lsequential_7/lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   П
>sequential_7/lstm_23/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem}sequential_7_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_23_tensorarrayunstack_tensorlistfromtensor_0&sequential_7_lstm_23_while_placeholderUsequential_7/lstm_23/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0∆
=sequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOpHsequential_7_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0ш
.sequential_7/lstm_23/while/lstm_cell_23/MatMulMatMulEsequential_7/lstm_23/while/TensorArrayV2Read/TensorListGetItem:item:0Esequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
?sequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpJsequential_7_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0я
0sequential_7/lstm_23/while/lstm_cell_23/MatMul_1MatMul(sequential_7_lstm_23_while_placeholder_2Gsequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@№
+sequential_7/lstm_23/while/lstm_cell_23/addAddV28sequential_7/lstm_23/while/lstm_cell_23/MatMul:product:0:sequential_7/lstm_23/while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ƒ
>sequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpIsequential_7_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0е
/sequential_7/lstm_23/while/lstm_cell_23/BiasAddBiasAdd/sequential_7/lstm_23/while/lstm_cell_23/add:z:0Fsequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@y
7sequential_7/lstm_23/while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ѓ
-sequential_7/lstm_23/while/lstm_cell_23/splitSplit@sequential_7/lstm_23/while/lstm_cell_23/split/split_dim:output:08sequential_7/lstm_23/while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split§
/sequential_7/lstm_23/while/lstm_cell_23/SigmoidSigmoid6sequential_7/lstm_23/while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_23/while/lstm_cell_23/Sigmoid_1Sigmoid6sequential_7/lstm_23/while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€≈
+sequential_7/lstm_23/while/lstm_cell_23/mulMul5sequential_7/lstm_23/while/lstm_cell_23/Sigmoid_1:y:0(sequential_7_lstm_23_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/lstm_23/while/lstm_cell_23/ReluRelu6sequential_7/lstm_23/while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€„
-sequential_7/lstm_23/while/lstm_cell_23/mul_1Mul3sequential_7/lstm_23/while/lstm_cell_23/Sigmoid:y:0:sequential_7/lstm_23/while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€ћ
-sequential_7/lstm_23/while/lstm_cell_23/add_1AddV2/sequential_7/lstm_23/while/lstm_cell_23/mul:z:01sequential_7/lstm_23/while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€¶
1sequential_7/lstm_23/while/lstm_cell_23/Sigmoid_2Sigmoid6sequential_7/lstm_23/while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Ы
.sequential_7/lstm_23/while/lstm_cell_23/Relu_1Relu1sequential_7/lstm_23/while/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€џ
-sequential_7/lstm_23/while/lstm_cell_23/mul_2Mul5sequential_7/lstm_23/while/lstm_cell_23/Sigmoid_2:y:0<sequential_7/lstm_23/while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€З
Esequential_7/lstm_23/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ѕ
?sequential_7/lstm_23/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem(sequential_7_lstm_23_while_placeholder_1Nsequential_7/lstm_23/while/TensorArrayV2Write/TensorListSetItem/index:output:01sequential_7/lstm_23/while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“b
 sequential_7/lstm_23/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ы
sequential_7/lstm_23/while/addAddV2&sequential_7_lstm_23_while_placeholder)sequential_7/lstm_23/while/add/y:output:0*
T0*
_output_shapes
: d
"sequential_7/lstm_23/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ї
 sequential_7/lstm_23/while/add_1AddV2Bsequential_7_lstm_23_while_sequential_7_lstm_23_while_loop_counter+sequential_7/lstm_23/while/add_1/y:output:0*
T0*
_output_shapes
: Ш
#sequential_7/lstm_23/while/IdentityIdentity$sequential_7/lstm_23/while/add_1:z:0 ^sequential_7/lstm_23/while/NoOp*
T0*
_output_shapes
: Њ
%sequential_7/lstm_23/while/Identity_1IdentityHsequential_7_lstm_23_while_sequential_7_lstm_23_while_maximum_iterations ^sequential_7/lstm_23/while/NoOp*
T0*
_output_shapes
: Ш
%sequential_7/lstm_23/while/Identity_2Identity"sequential_7/lstm_23/while/add:z:0 ^sequential_7/lstm_23/while/NoOp*
T0*
_output_shapes
: ≈
%sequential_7/lstm_23/while/Identity_3IdentityOsequential_7/lstm_23/while/TensorArrayV2Write/TensorListSetItem:output_handle:0 ^sequential_7/lstm_23/while/NoOp*
T0*
_output_shapes
: Є
%sequential_7/lstm_23/while/Identity_4Identity1sequential_7/lstm_23/while/lstm_cell_23/mul_2:z:0 ^sequential_7/lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
%sequential_7/lstm_23/while/Identity_5Identity1sequential_7/lstm_23/while/lstm_cell_23/add_1:z:0 ^sequential_7/lstm_23/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€§
sequential_7/lstm_23/while/NoOpNoOp?^sequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp>^sequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp@^sequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "S
#sequential_7_lstm_23_while_identity,sequential_7/lstm_23/while/Identity:output:0"W
%sequential_7_lstm_23_while_identity_1.sequential_7/lstm_23/while/Identity_1:output:0"W
%sequential_7_lstm_23_while_identity_2.sequential_7/lstm_23/while/Identity_2:output:0"W
%sequential_7_lstm_23_while_identity_3.sequential_7/lstm_23/while/Identity_3:output:0"W
%sequential_7_lstm_23_while_identity_4.sequential_7/lstm_23/while/Identity_4:output:0"W
%sequential_7_lstm_23_while_identity_5.sequential_7/lstm_23/while/Identity_5:output:0"Ф
Gsequential_7_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resourceIsequential_7_lstm_23_while_lstm_cell_23_biasadd_readvariableop_resource_0"Ц
Hsequential_7_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resourceJsequential_7_lstm_23_while_lstm_cell_23_matmul_1_readvariableop_resource_0"Т
Fsequential_7_lstm_23_while_lstm_cell_23_matmul_readvariableop_resourceHsequential_7_lstm_23_while_lstm_cell_23_matmul_readvariableop_resource_0"Д
?sequential_7_lstm_23_while_sequential_7_lstm_23_strided_slice_1Asequential_7_lstm_23_while_sequential_7_lstm_23_strided_slice_1_0"ь
{sequential_7_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_23_tensorarrayunstack_tensorlistfromtensor}sequential_7_lstm_23_while_tensorarrayv2read_tensorlistgetitem_sequential_7_lstm_23_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2А
>sequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp>sequential_7/lstm_23/while/lstm_cell_23/BiasAdd/ReadVariableOp2~
=sequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp=sequential_7/lstm_23/while/lstm_cell_23/MatMul/ReadVariableOp2В
?sequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp?sequential_7/lstm_23/while/lstm_cell_23/MatMul_1/ReadVariableOp:_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_23/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
°
G
+__inference_dropout_34_layer_call_fn_287282

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283815`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_286250
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286250___redundant_placeholder04
0while_while_cond_286250___redundant_placeholder14
0while_while_cond_286250___redundant_placeholder24
0while_while_cond_286250___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
™B
 

lstm_22_while_body_285105,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:@O
=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:@J
<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:@
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorK
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:@M
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:@H
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpР
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_22/while/lstm_cell_22/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_22/while/lstm_cell_22/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_22/while/lstm_cell_22/addAddV2+lstm_22/while/lstm_cell_22/MatMul:product:0-lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_22/while/lstm_cell_22/BiasAddBiasAdd"lstm_22/while/lstm_cell_22/add:z:09lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_22/while/lstm_cell_22/splitSplit3lstm_22/while/lstm_cell_22/split/split_dim:output:0+lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_22/while/lstm_cell_22/SigmoidSigmoid)lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_22/while/lstm_cell_22/mulMul(lstm_22/while/lstm_cell_22/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_22/while/lstm_cell_22/ReluRelu)lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_22/while/lstm_cell_22/mul_1Mul&lstm_22/while/lstm_cell_22/Sigmoid:y:0-lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_22/while/lstm_cell_22/add_1AddV2"lstm_22/while/lstm_cell_22/mul:z:0$lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_22/while/lstm_cell_22/Relu_1Relu$lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_22/while/lstm_cell_22/mul_2Mul(lstm_22/while/lstm_cell_22/Sigmoid_2:y:0/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€е
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: К
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations^lstm_22/while/NoOp*
T0*
_output_shapes
: q
lstm_22/while/Identity_2Identitylstm_22/while/add:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: Ю
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_22/while/NoOp*
T0*
_output_shapes
: С
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_22/mul_2:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_22/add_1:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_22/while/NoOpNoOp2^lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"»
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_22/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ў
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_287393

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э9
 
while_body_283127
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
б8
 
while_body_285608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
µJ
Ш
C__inference_lstm_21_layer_call_and_return_conditional_losses_285835

inputs=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_285751*
condR
while_cond_285750*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
г
lstm_21_while_cond_284466,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_284466___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_284466___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_284466___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_284466___redundant_placeholder3
lstm_21_while_identity
В
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: [
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_21/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ч	
√
while_cond_285464
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285464___redundant_placeholder04
0while_while_cond_285464___redundant_placeholder14
0while_while_cond_285464___redundant_placeholder24
0while_while_cond_285464___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
б8
 
while_body_286251
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
¬#
Ё
while_body_281760
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_21_281784_0:@-
while_lstm_cell_21_281786_0:@)
while_lstm_cell_21_281788_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_21_281784:@+
while_lstm_cell_21_281786:@'
while_lstm_cell_21_281788:@ИҐ*while/lstm_cell_21/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_281784_0while_lstm_cell_21_281786_0while_lstm_cell_21_281788_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281746№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_21_281784while_lstm_cell_21_281784_0"8
while_lstm_cell_21_281786while_lstm_cell_21_281786_0"8
while_lstm_cell_21_281788while_lstm_cell_21_281788_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
э9
 
while_body_286897
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ґ

e
F__inference_dropout_33_layer_call_and_return_conditional_losses_286643

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
”
Г
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287721

inputs
states_0
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0o
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
уJ
Ъ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285549
inputs_0=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_285465*
condR
while_cond_285464*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
«	
х
D__inference_dense_21_layer_call_and_return_conditional_losses_283337

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_286394
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
њ
є
$__inference_signature_wrapper_284330
lstm_21_input
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityИҐStatefulPartitionedCallЖ
StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_281682o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
ёK
Ъ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286982
inputs_0=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286897*
condR
while_cond_286896*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
М
і
(__inference_lstm_23_layer_call_fn_286659
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_282531o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
Ч	
√
while_cond_285750
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285750___redundant_placeholder04
0while_while_cond_285750___redundant_placeholder14
0while_while_cond_285750___redundant_placeholder24
0while_while_cond_285750___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
й
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_283501

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
їK
Ш
C__inference_lstm_23_layer_call_and_return_conditional_losses_287272

inputs=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_287187*
condR
while_cond_287186*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_286393
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286393___redundant_placeholder04
0while_while_cond_286393___redundant_placeholder14
0while_while_cond_286393___redundant_placeholder24
0while_while_cond_286393___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
їK
Ш
C__inference_lstm_23_layer_call_and_return_conditional_losses_287127

inputs=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_287042*
condR
while_cond_287041*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™B
 

lstm_21_while_body_284965,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:@O
=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:@J
<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:@
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorK
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:@M
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:@H
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpР
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_21/while/lstm_cell_21/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_21/while/lstm_cell_21/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_21/while/lstm_cell_21/addAddV2+lstm_21/while/lstm_cell_21/MatMul:product:0-lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_21/while/lstm_cell_21/BiasAddBiasAdd"lstm_21/while/lstm_cell_21/add:z:09lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_21/while/lstm_cell_21/splitSplit3lstm_21/while/lstm_cell_21/split/split_dim:output:0+lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_21/while/lstm_cell_21/SigmoidSigmoid)lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_21/while/lstm_cell_21/mulMul(lstm_21/while/lstm_cell_21/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_21/while/lstm_cell_21/ReluRelu)lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_21/while/lstm_cell_21/mul_1Mul&lstm_21/while/lstm_cell_21/Sigmoid:y:0-lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_21/while/lstm_cell_21/add_1AddV2"lstm_21/while/lstm_cell_21/mul:z:0$lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_21/while/lstm_cell_21/Relu_1Relu$lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_21/while/lstm_cell_21/mul_2Mul(lstm_21/while/lstm_cell_21/Sigmoid_2:y:0/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€е
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: К
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: q
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: Ю
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: С
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_21/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_21/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"»
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_21/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
и
у
-__inference_lstm_cell_21_layer_call_fn_287493

inputs
states_0
states_1
unknown:@
	unknown_0:@
	unknown_1:@
identity

identity_1

identity_2ИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281891o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
states_1
э9
 
while_body_287042
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
¶
і
(__inference_lstm_21_layer_call_fn_285373
inputs_0
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_281829|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0
µJ
Ш
C__inference_lstm_21_layer_call_and_return_conditional_losses_282882

inputs=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282798*
condR
while_cond_282797*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_285893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285893___redundant_placeholder04
0while_while_cond_285893___redundant_placeholder14
0while_while_cond_285893___redundant_placeholder24
0while_while_cond_285893___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ў
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_283815

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬
Ц
)__inference_dense_18_layer_call_fn_287308

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_283245o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ъ6
О
H__inference_sequential_7_layer_call_and_return_conditional_losses_283856
lstm_21_input 
lstm_21_283490:@ 
lstm_21_283492:@
lstm_21_283494:@ 
lstm_22_283646:@ 
lstm_22_283648:@
lstm_22_283650:@ 
lstm_23_283804:@ 
lstm_23_283806:@
lstm_23_283808:@!
dense_18_283817:
dense_18_283819:!
dense_19_283828:
dense_19_283830:!
dense_20_283839:
dense_20_283841:!
dense_21_283850:
dense_21_283852:
identityИҐ dense_18/StatefulPartitionedCallҐ dense_19/StatefulPartitionedCallҐ dense_20/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallҐlstm_23/StatefulPartitionedCallЙ
lstm_21/StatefulPartitionedCallStatefulPartitionedCalllstm_21_inputlstm_21_283490lstm_21_283492lstm_21_283494*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_283489в
dropout_32/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_283501Я
lstm_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_32/PartitionedCall:output:0lstm_22_283646lstm_22_283648lstm_22_283650*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283645в
dropout_33/PartitionedCallPartitionedCall(lstm_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283657Ы
lstm_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0lstm_23_283804lstm_23_283806lstm_23_283808*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283803ё
dropout_34/PartitionedCallPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283815Н
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_18_283817dense_18_283819*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_283245я
dropout_35/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283826Н
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_19_283828dense_19_283830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_283276я
dropout_36/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283837Н
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_20_283839dense_20_283841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_283307я
dropout_37/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283848Н
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_21_283850dense_21_283852*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_283337x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
Ч	
√
while_cond_286896
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286896___redundant_placeholder04
0while_while_cond_286896___redundant_placeholder14
0while_while_cond_286896___redundant_placeholder24
0while_while_cond_286896___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
™B
 

lstm_21_while_body_284467,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3+
'lstm_21_while_lstm_21_strided_slice_1_0g
clstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0:@O
=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0:@J
<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0:@
lstm_21_while_identity
lstm_21_while_identity_1
lstm_21_while_identity_2
lstm_21_while_identity_3
lstm_21_while_identity_4
lstm_21_while_identity_5)
%lstm_21_while_lstm_21_strided_slice_1e
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorK
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource:@M
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource:@H
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpҐ0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpҐ2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpР
?lstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_21/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0lstm_21_while_placeholderHlstm_21/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_21/while/lstm_cell_21/MatMulMatMul8lstm_21/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_21/while/lstm_cell_21/MatMul_1MatMullstm_21_while_placeholder_2:lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_21/while/lstm_cell_21/addAddV2+lstm_21/while/lstm_cell_21/MatMul:product:0-lstm_21/while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_21/while/lstm_cell_21/BiasAddBiasAdd"lstm_21/while/lstm_cell_21/add:z:09lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_21/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_21/while/lstm_cell_21/splitSplit3lstm_21/while/lstm_cell_21/split/split_dim:output:0+lstm_21/while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_21/while/lstm_cell_21/SigmoidSigmoid)lstm_21/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_21/while/lstm_cell_21/Sigmoid_1Sigmoid)lstm_21/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_21/while/lstm_cell_21/mulMul(lstm_21/while/lstm_cell_21/Sigmoid_1:y:0lstm_21_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_21/while/lstm_cell_21/ReluRelu)lstm_21/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_21/while/lstm_cell_21/mul_1Mul&lstm_21/while/lstm_cell_21/Sigmoid:y:0-lstm_21/while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_21/while/lstm_cell_21/add_1AddV2"lstm_21/while/lstm_cell_21/mul:z:0$lstm_21/while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_21/while/lstm_cell_21/Sigmoid_2Sigmoid)lstm_21/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_21/while/lstm_cell_21/Relu_1Relu$lstm_21/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_21/while/lstm_cell_21/mul_2Mul(lstm_21/while/lstm_cell_21/Sigmoid_2:y:0/lstm_21/while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€е
2lstm_21/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_21_while_placeholder_1lstm_21_while_placeholder$lstm_21/while/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_21/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_21/while/addAddV2lstm_21_while_placeholderlstm_21/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_21/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_21/while/add_1AddV2(lstm_21_while_lstm_21_while_loop_counterlstm_21/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_21/while/IdentityIdentitylstm_21/while/add_1:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: К
lstm_21/while/Identity_1Identity.lstm_21_while_lstm_21_while_maximum_iterations^lstm_21/while/NoOp*
T0*
_output_shapes
: q
lstm_21/while/Identity_2Identitylstm_21/while/add:z:0^lstm_21/while/NoOp*
T0*
_output_shapes
: Ю
lstm_21/while/Identity_3IdentityBlstm_21/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_21/while/NoOp*
T0*
_output_shapes
: С
lstm_21/while/Identity_4Identity$lstm_21/while/lstm_cell_21/mul_2:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_21/while/Identity_5Identity$lstm_21/while/lstm_cell_21/add_1:z:0^lstm_21/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_21/while/NoOpNoOp2^lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1^lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp3^lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_21_while_identitylstm_21/while/Identity:output:0"=
lstm_21_while_identity_1!lstm_21/while/Identity_1:output:0"=
lstm_21_while_identity_2!lstm_21/while/Identity_2:output:0"=
lstm_21_while_identity_3!lstm_21/while/Identity_3:output:0"=
lstm_21_while_identity_4!lstm_21/while/Identity_4:output:0"=
lstm_21_while_identity_5!lstm_21/while/Identity_5:output:0"P
%lstm_21_while_lstm_21_strided_slice_1'lstm_21_while_lstm_21_strided_slice_1_0"z
:lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource<lstm_21_while_lstm_cell_21_biasadd_readvariableop_resource_0"|
;lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource=lstm_21_while_lstm_cell_21_matmul_1_readvariableop_resource_0"x
9lstm_21_while_lstm_cell_21_matmul_readvariableop_resource;lstm_21_while_lstm_cell_21_matmul_readvariableop_resource_0"»
alstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensorclstm_21_while_tensorarrayv2read_tensorlistgetitem_lstm_21_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp1lstm_21/while/lstm_cell_21/BiasAdd/ReadVariableOp2d
0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp0lstm_21/while/lstm_cell_21/MatMul/ReadVariableOp2h
2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp2lstm_21/while/lstm_cell_21/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_21/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
¬
Ц
)__inference_dense_21_layer_call_fn_287449

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_283337o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_286751
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286751___redundant_placeholder04
0while_while_cond_286751___redundant_placeholder14
0while_while_cond_286751___redundant_placeholder24
0while_while_cond_286751___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ћ
Б
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281891

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
Ђ8
В
C__inference_lstm_22_layer_call_and_return_conditional_losses_282179

inputs%
lstm_cell_22_282097:@%
lstm_cell_22_282099:@!
lstm_cell_22_282101:@
identityИҐ$lstm_cell_22/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_282097lstm_cell_22_282099lstm_cell_22_282101*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282096n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_282097lstm_cell_22_282099lstm_cell_22_282101*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282110*
condR
while_cond_282109*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€u
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_286536
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286536___redundant_placeholder04
0while_while_cond_286536___redundant_placeholder14
0while_while_cond_286536___redundant_placeholder24
0while_while_cond_286536___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ъ

e
F__inference_dropout_35_layer_call_and_return_conditional_losses_287341

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э9
 
while_body_286752
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ыћ
Й
H__inference_sequential_7_layer_call_and_return_conditional_losses_284906

inputsE
3lstm_21_lstm_cell_21_matmul_readvariableop_resource:@G
5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:@B
4lstm_21_lstm_cell_21_biasadd_readvariableop_resource:@E
3lstm_22_lstm_cell_22_matmul_readvariableop_resource:@G
5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:@B
4lstm_22_lstm_cell_22_biasadd_readvariableop_resource:@E
3lstm_23_lstm_cell_23_matmul_readvariableop_resource:@G
5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:@B
4lstm_23_lstm_cell_23_biasadd_readvariableop_resource:@9
'dense_18_matmul_readvariableop_resource:6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:9
'dense_21_matmul_readvariableop_resource:6
(dense_21_biasadd_readvariableop_resource:
identityИҐdense_18/BiasAdd/ReadVariableOpҐdense_18/MatMul/ReadVariableOpҐdense_19/BiasAdd/ReadVariableOpҐdense_19/MatMul/ReadVariableOpҐdense_20/BiasAdd/ReadVariableOpҐdense_20/MatMul/ReadVariableOpҐdense_21/BiasAdd/ReadVariableOpҐdense_21/MatMul/ReadVariableOpҐ+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ*lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐlstm_21/whileҐ+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ*lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐlstm_22/whileҐ+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpҐ*lstm_23/lstm_cell_23/MatMul/ReadVariableOpҐ,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpҐlstm_23/whileQ
lstm_21/ShapeShapeinputs*
T0*
_output_shapes
::нѕe
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_21/transpose	Transposeinputslstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_21/lstm_cell_21/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_21/lstm_cell_21/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_21/lstm_cell_21/addAddV2%lstm_21/lstm_cell_21/MatMul:product:0'lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_21/lstm_cell_21/BiasAddBiasAddlstm_21/lstm_cell_21/add:z:03lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_21/lstm_cell_21/splitSplit-lstm_21/lstm_cell_21/split/split_dim:output:0%lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_21/lstm_cell_21/SigmoidSigmoid#lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_21/lstm_cell_21/Sigmoid_1Sigmoid#lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_21/lstm_cell_21/mulMul"lstm_21/lstm_cell_21/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_21/lstm_cell_21/ReluRelu#lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_21/lstm_cell_21/mul_1Mul lstm_21/lstm_cell_21/Sigmoid:y:0'lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_21/lstm_cell_21/add_1AddV2lstm_21/lstm_cell_21/mul:z:0lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_21/lstm_cell_21/Sigmoid_2Sigmoid#lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_21/lstm_cell_21/Relu_1Relulstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_21/lstm_cell_21/mul_2Mul"lstm_21/lstm_cell_21/Sigmoid_2:y:0)lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   –
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_21_matmul_readvariableop_resource5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_21_while_body_284467*%
condR
lstm_21_while_cond_284466*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Џ
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0p
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_32/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?П
dropout_32/dropout/MulMullstm_21/transpose_1:y:0!dropout_32/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€m
dropout_32/dropout/ShapeShapelstm_21/transpose_1:y:0*
T0*
_output_shapes
::нѕ¶
/dropout_32/dropout/random_uniform/RandomUniformRandomUniform!dropout_32/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_32/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=Ћ
dropout_32/dropout/GreaterEqualGreaterEqual8dropout_32/dropout/random_uniform/RandomUniform:output:0*dropout_32/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
dropout_32/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_32/dropout/SelectV2SelectV2#dropout_32/dropout/GreaterEqual:z:0dropout_32/dropout/Mul:z:0#dropout_32/dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€o
lstm_22/ShapeShape$dropout_32/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕe
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ы
lstm_22/transpose	Transpose$dropout_32/dropout/SelectV2:output:0lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_22/lstm_cell_22/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_22/lstm_cell_22/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_22/lstm_cell_22/addAddV2%lstm_22/lstm_cell_22/MatMul:product:0'lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_22/lstm_cell_22/BiasAddBiasAddlstm_22/lstm_cell_22/add:z:03lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_22/lstm_cell_22/splitSplit-lstm_22/lstm_cell_22/split/split_dim:output:0%lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_22/lstm_cell_22/SigmoidSigmoid#lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_22/lstm_cell_22/Sigmoid_1Sigmoid#lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_22/lstm_cell_22/mulMul"lstm_22/lstm_cell_22/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_22/lstm_cell_22/ReluRelu#lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_22/lstm_cell_22/mul_1Mul lstm_22/lstm_cell_22/Sigmoid:y:0'lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_22/lstm_cell_22/add_1AddV2lstm_22/lstm_cell_22/mul:z:0lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_22/lstm_cell_22/Sigmoid_2Sigmoid#lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_22/lstm_cell_22/Relu_1Relulstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_22/lstm_cell_22/mul_2Mul"lstm_22/lstm_cell_22/Sigmoid_2:y:0)lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   –
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_22_matmul_readvariableop_resource5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_22_while_body_284614*%
condR
lstm_22_while_cond_284613*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Џ
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0p
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_33/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?П
dropout_33/dropout/MulMullstm_22/transpose_1:y:0!dropout_33/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€m
dropout_33/dropout/ShapeShapelstm_22/transpose_1:y:0*
T0*
_output_shapes
::нѕ¶
/dropout_33/dropout/random_uniform/RandomUniformRandomUniform!dropout_33/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_33/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=Ћ
dropout_33/dropout/GreaterEqualGreaterEqual8dropout_33/dropout/random_uniform/RandomUniform:output:0*dropout_33/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€_
dropout_33/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_33/dropout/SelectV2SelectV2#dropout_33/dropout/GreaterEqual:z:0dropout_33/dropout/Mul:z:0#dropout_33/dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€o
lstm_23/ShapeShape$dropout_33/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕe
lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_23/strided_sliceStridedSlicelstm_23/Shape:output:0$lstm_23/strided_slice/stack:output:0&lstm_23/strided_slice/stack_1:output:0&lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_23/zeros/packedPacklstm_23/strided_slice:output:0lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_23/zerosFilllstm_23/zeros/packed:output:0lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_23/zeros_1/packedPacklstm_23/strided_slice:output:0!lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_23/zeros_1Filllstm_23/zeros_1/packed:output:0lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ы
lstm_23/transpose	Transpose$dropout_33/dropout/SelectV2:output:0lstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_23/Shape_1Shapelstm_23/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_23/strided_slice_1StridedSlicelstm_23/Shape_1:output:0&lstm_23/strided_slice_1/stack:output:0(lstm_23/strided_slice_1/stack_1:output:0(lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_23/TensorArrayV2TensorListReserve,lstm_23/TensorArrayV2/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_23/transpose:y:0Flstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_23/strided_slice_2StridedSlicelstm_23/transpose:y:0&lstm_23/strided_slice_2/stack:output:0(lstm_23/strided_slice_2/stack_1:output:0(lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_23/lstm_cell_23/MatMulMatMul lstm_23/strided_slice_2:output:02lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_23/lstm_cell_23/MatMul_1MatMullstm_23/zeros:output:04lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_23/lstm_cell_23/addAddV2%lstm_23/lstm_cell_23/MatMul:product:0'lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_23/lstm_cell_23/BiasAddBiasAddlstm_23/lstm_cell_23/add:z:03lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_23/lstm_cell_23/splitSplit-lstm_23/lstm_cell_23/split/split_dim:output:0%lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_23/lstm_cell_23/SigmoidSigmoid#lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_23/lstm_cell_23/Sigmoid_1Sigmoid#lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_23/lstm_cell_23/mulMul"lstm_23/lstm_cell_23/Sigmoid_1:y:0lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_23/lstm_cell_23/ReluRelu#lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_23/lstm_cell_23/mul_1Mul lstm_23/lstm_cell_23/Sigmoid:y:0'lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_23/lstm_cell_23/add_1AddV2lstm_23/lstm_cell_23/mul:z:0lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_23/lstm_cell_23/Sigmoid_2Sigmoid#lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_23/lstm_cell_23/Relu_1Relulstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_23/lstm_cell_23/mul_2Mul"lstm_23/lstm_cell_23/Sigmoid_2:y:0)lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   f
$lstm_23/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_23/TensorArrayV2_1TensorListReserve.lstm_23/TensorArrayV2_1/element_shape:output:0-lstm_23/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_23/whileWhile#lstm_23/while/loop_counter:output:0)lstm_23/while/maximum_iterations:output:0lstm_23/time:output:0 lstm_23/TensorArrayV2_1:handle:0lstm_23/zeros:output:0lstm_23/zeros_1:output:0 lstm_23/strided_slice_1:output:0?lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_23_lstm_cell_23_matmul_readvariableop_resource5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_23_while_body_284762*%
condR
lstm_23_while_cond_284761*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   о
*lstm_23/TensorArrayV2Stack/TensorListStackTensorListStacklstm_23/while:output:3Alstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsp
lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_23/strided_slice_3StridedSlice3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_23/strided_slice_3/stack:output:0(lstm_23/strided_slice_3/stack_1:output:0(lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_23/transpose_1	Transpose3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
dropout_34/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Ф
dropout_34/dropout/MulMul lstm_23/strided_slice_3:output:0!dropout_34/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
dropout_34/dropout/ShapeShape lstm_23/strided_slice_3:output:0*
T0*
_output_shapes
::нѕҐ
/dropout_34/dropout/random_uniform/RandomUniformRandomUniform!dropout_34/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_34/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=«
dropout_34/dropout/GreaterEqualGreaterEqual8dropout_34/dropout/random_uniform/RandomUniform:output:0*dropout_34/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
dropout_34/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_34/dropout/SelectV2SelectV2#dropout_34/dropout/GreaterEqual:z:0dropout_34/dropout/Mul:z:0#dropout_34/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Щ
dense_18/MatMulMatMul$dropout_34/dropout/SelectV2:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
dropout_35/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?П
dropout_35/dropout/MulMuldense_18/Relu:activations:0!dropout_35/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€q
dropout_35/dropout/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
::нѕҐ
/dropout_35/dropout/random_uniform/RandomUniformRandomUniform!dropout_35/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_35/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=«
dropout_35/dropout/GreaterEqualGreaterEqual8dropout_35/dropout/random_uniform/RandomUniform:output:0*dropout_35/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
dropout_35/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_35/dropout/SelectV2SelectV2#dropout_35/dropout/GreaterEqual:z:0dropout_35/dropout/Mul:z:0#dropout_35/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Щ
dense_19/MatMulMatMul$dropout_35/dropout/SelectV2:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?П
dropout_36/dropout/MulMuldense_19/Relu:activations:0!dropout_36/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€q
dropout_36/dropout/ShapeShapedense_19/Relu:activations:0*
T0*
_output_shapes
::нѕҐ
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=«
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
dropout_36/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_36/dropout/SelectV2SelectV2#dropout_36/dropout/GreaterEqual:z:0dropout_36/dropout/Mul:z:0#dropout_36/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Щ
dense_20/MatMulMatMul$dropout_36/dropout/SelectV2:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?П
dropout_37/dropout/MulMuldense_20/Relu:activations:0!dropout_37/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€q
dropout_37/dropout/ShapeShapedense_20/Relu:activations:0*
T0*
_output_shapes
::нѕҐ
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=«
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
dropout_37/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    њ
dropout_37/dropout/SelectV2SelectV2#dropout_37/dropout/GreaterEqual:z:0dropout_37/dropout/Mul:z:0#dropout_37/dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Щ
dense_21/MatMulMatMul$dropout_37/dropout/SelectV2:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€†
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_21/MatMul/ReadVariableOp-^lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_22/MatMul/ReadVariableOp-^lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_22/while,^lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_23/lstm_cell_23/MatMul/ReadVariableOp-^lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_23/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_21/MatMul/ReadVariableOp*lstm_21/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_22/MatMul/ReadVariableOp*lstm_22/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while2Z
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_23/lstm_cell_23/MatMul/ReadVariableOp*lstm_23/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_23/whilelstm_23/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≤Ь
Й
H__inference_sequential_7_layer_call_and_return_conditional_losses_285362

inputsE
3lstm_21_lstm_cell_21_matmul_readvariableop_resource:@G
5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:@B
4lstm_21_lstm_cell_21_biasadd_readvariableop_resource:@E
3lstm_22_lstm_cell_22_matmul_readvariableop_resource:@G
5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:@B
4lstm_22_lstm_cell_22_biasadd_readvariableop_resource:@E
3lstm_23_lstm_cell_23_matmul_readvariableop_resource:@G
5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:@B
4lstm_23_lstm_cell_23_biasadd_readvariableop_resource:@9
'dense_18_matmul_readvariableop_resource:6
(dense_18_biasadd_readvariableop_resource:9
'dense_19_matmul_readvariableop_resource:6
(dense_19_biasadd_readvariableop_resource:9
'dense_20_matmul_readvariableop_resource:6
(dense_20_biasadd_readvariableop_resource:9
'dense_21_matmul_readvariableop_resource:6
(dense_21_biasadd_readvariableop_resource:
identityИҐdense_18/BiasAdd/ReadVariableOpҐdense_18/MatMul/ReadVariableOpҐdense_19/BiasAdd/ReadVariableOpҐdense_19/MatMul/ReadVariableOpҐdense_20/BiasAdd/ReadVariableOpҐdense_20/MatMul/ReadVariableOpҐdense_21/BiasAdd/ReadVariableOpҐdense_21/MatMul/ReadVariableOpҐ+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ*lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐlstm_21/whileҐ+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ*lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐlstm_22/whileҐ+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpҐ*lstm_23/lstm_cell_23/MatMul/ReadVariableOpҐ,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpҐlstm_23/whileQ
lstm_21/ShapeShapeinputs*
T0*
_output_shapes
::нѕe
lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_21/strided_sliceStridedSlicelstm_21/Shape:output:0$lstm_21/strided_slice/stack:output:0&lstm_21/strided_slice/stack_1:output:0&lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_21/zeros/packedPacklstm_21/strided_slice:output:0lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_21/zerosFilllstm_21/zeros/packed:output:0lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_21/zeros_1/packedPacklstm_21/strided_slice:output:0!lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_21/zeros_1Filllstm_21/zeros_1/packed:output:0lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_21/transpose	Transposeinputslstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_21/Shape_1Shapelstm_21/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_21/strided_slice_1StridedSlicelstm_21/Shape_1:output:0&lstm_21/strided_slice_1/stack:output:0(lstm_21/strided_slice_1/stack_1:output:0(lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_21/TensorArrayV2TensorListReserve,lstm_21/TensorArrayV2/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_21/transpose:y:0Flstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_21/strided_slice_2StridedSlicelstm_21/transpose:y:0&lstm_21/strided_slice_2/stack:output:0(lstm_21/strided_slice_2/stack_1:output:0(lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_21/lstm_cell_21/MatMulMatMul lstm_21/strided_slice_2:output:02lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_21/lstm_cell_21/MatMul_1MatMullstm_21/zeros:output:04lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_21/lstm_cell_21/addAddV2%lstm_21/lstm_cell_21/MatMul:product:0'lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_21/lstm_cell_21/BiasAddBiasAddlstm_21/lstm_cell_21/add:z:03lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_21/lstm_cell_21/splitSplit-lstm_21/lstm_cell_21/split/split_dim:output:0%lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_21/lstm_cell_21/SigmoidSigmoid#lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_21/lstm_cell_21/Sigmoid_1Sigmoid#lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_21/lstm_cell_21/mulMul"lstm_21/lstm_cell_21/Sigmoid_1:y:0lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_21/lstm_cell_21/ReluRelu#lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_21/lstm_cell_21/mul_1Mul lstm_21/lstm_cell_21/Sigmoid:y:0'lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_21/lstm_cell_21/add_1AddV2lstm_21/lstm_cell_21/mul:z:0lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_21/lstm_cell_21/Sigmoid_2Sigmoid#lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_21/lstm_cell_21/Relu_1Relulstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_21/lstm_cell_21/mul_2Mul"lstm_21/lstm_cell_21/Sigmoid_2:y:0)lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   –
lstm_21/TensorArrayV2_1TensorListReserve.lstm_21/TensorArrayV2_1/element_shape:output:0 lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_21/whileWhile#lstm_21/while/loop_counter:output:0)lstm_21/while/maximum_iterations:output:0lstm_21/time:output:0 lstm_21/TensorArrayV2_1:handle:0lstm_21/zeros:output:0lstm_21/zeros_1:output:0 lstm_21/strided_slice_1:output:0?lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_21_lstm_cell_21_matmul_readvariableop_resource5lstm_21_lstm_cell_21_matmul_1_readvariableop_resource4lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_21_while_body_284965*%
condR
lstm_21_while_cond_284964*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Џ
*lstm_21/TensorArrayV2Stack/TensorListStackTensorListStacklstm_21/while:output:3Alstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0p
lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_21/strided_slice_3StridedSlice3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_21/strided_slice_3/stack:output:0(lstm_21/strided_slice_3/stack_1:output:0(lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_21/transpose_1	Transpose3lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_32/IdentityIdentitylstm_21/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€g
lstm_22/ShapeShapedropout_32/Identity:output:0*
T0*
_output_shapes
::нѕe
lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_22/strided_sliceStridedSlicelstm_22/Shape:output:0$lstm_22/strided_slice/stack:output:0&lstm_22/strided_slice/stack_1:output:0&lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_22/zeros/packedPacklstm_22/strided_slice:output:0lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_22/zerosFilllstm_22/zeros/packed:output:0lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_22/zeros_1/packedPacklstm_22/strided_slice:output:0!lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_22/zeros_1Filllstm_22/zeros_1/packed:output:0lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_22/transpose	Transposedropout_32/Identity:output:0lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_22/Shape_1Shapelstm_22/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_22/strided_slice_1StridedSlicelstm_22/Shape_1:output:0&lstm_22/strided_slice_1/stack:output:0(lstm_22/strided_slice_1/stack_1:output:0(lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_22/TensorArrayV2TensorListReserve,lstm_22/TensorArrayV2/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_22/transpose:y:0Flstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_22/strided_slice_2StridedSlicelstm_22/transpose:y:0&lstm_22/strided_slice_2/stack:output:0(lstm_22/strided_slice_2/stack_1:output:0(lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_22/lstm_cell_22/MatMulMatMul lstm_22/strided_slice_2:output:02lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_22/lstm_cell_22/MatMul_1MatMullstm_22/zeros:output:04lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_22/lstm_cell_22/addAddV2%lstm_22/lstm_cell_22/MatMul:product:0'lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_22/lstm_cell_22/BiasAddBiasAddlstm_22/lstm_cell_22/add:z:03lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_22/lstm_cell_22/splitSplit-lstm_22/lstm_cell_22/split/split_dim:output:0%lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_22/lstm_cell_22/SigmoidSigmoid#lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_22/lstm_cell_22/Sigmoid_1Sigmoid#lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_22/lstm_cell_22/mulMul"lstm_22/lstm_cell_22/Sigmoid_1:y:0lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_22/lstm_cell_22/ReluRelu#lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_22/lstm_cell_22/mul_1Mul lstm_22/lstm_cell_22/Sigmoid:y:0'lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_22/lstm_cell_22/add_1AddV2lstm_22/lstm_cell_22/mul:z:0lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_22/lstm_cell_22/Sigmoid_2Sigmoid#lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_22/lstm_cell_22/Relu_1Relulstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_22/lstm_cell_22/mul_2Mul"lstm_22/lstm_cell_22/Sigmoid_2:y:0)lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   –
lstm_22/TensorArrayV2_1TensorListReserve.lstm_22/TensorArrayV2_1/element_shape:output:0 lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_22/whileWhile#lstm_22/while/loop_counter:output:0)lstm_22/while/maximum_iterations:output:0lstm_22/time:output:0 lstm_22/TensorArrayV2_1:handle:0lstm_22/zeros:output:0lstm_22/zeros_1:output:0 lstm_22/strided_slice_1:output:0?lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_22_lstm_cell_22_matmul_readvariableop_resource5lstm_22_lstm_cell_22_matmul_1_readvariableop_resource4lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_22_while_body_285105*%
condR
lstm_22_while_cond_285104*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Џ
*lstm_22/TensorArrayV2Stack/TensorListStackTensorListStacklstm_22/while:output:3Alstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0p
lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_22/strided_slice_3StridedSlice3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_22/strided_slice_3/stack:output:0(lstm_22/strided_slice_3/stack_1:output:0(lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_22/transpose_1	Transpose3lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    n
dropout_33/IdentityIdentitylstm_22/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€g
lstm_23/ShapeShapedropout_33/Identity:output:0*
T0*
_output_shapes
::нѕe
lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
lstm_23/strided_sliceStridedSlicelstm_23/Shape:output:0$lstm_23/strided_slice/stack:output:0&lstm_23/strided_slice/stack_1:output:0&lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Л
lstm_23/zeros/packedPacklstm_23/strided_slice:output:0lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Д
lstm_23/zerosFilllstm_23/zeros/packed:output:0lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
lstm_23/zeros_1/packedPacklstm_23/strided_slice:output:0!lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    К
lstm_23/zeros_1Filllstm_23/zeros_1/packed:output:0lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€k
lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          У
lstm_23/transpose	Transposedropout_33/Identity:output:0lstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€b
lstm_23/Shape_1Shapelstm_23/transpose:y:0*
T0*
_output_shapes
::нѕg
lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
lstm_23/strided_slice_1StridedSlicelstm_23/Shape_1:output:0&lstm_23/strided_slice_1/stack:output:0(lstm_23/strided_slice_1/stack_1:output:0(lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€ћ
lstm_23/TensorArrayV2TensorListReserve,lstm_23/TensorArrayV2/element_shape:output:0 lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
=lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ш
/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_23/transpose:y:0Flstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“g
lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:С
lstm_23/strided_slice_2StridedSlicelstm_23/transpose:y:0&lstm_23/strided_slice_2/stack:output:0(lstm_23/strided_slice_2/stack_1:output:0(lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЮ
*lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0≠
lstm_23/lstm_cell_23/MatMulMatMul lstm_23/strided_slice_2:output:02lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Ґ
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0І
lstm_23/lstm_cell_23/MatMul_1MatMullstm_23/zeros:output:04lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@£
lstm_23/lstm_cell_23/addAddV2%lstm_23/lstm_cell_23/MatMul:product:0'lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ь
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0ђ
lstm_23/lstm_cell_23/BiasAddBiasAddlstm_23/lstm_cell_23/add:z:03lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@f
$lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :х
lstm_23/lstm_cell_23/splitSplit-lstm_23/lstm_cell_23/split/split_dim:output:0%lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_split~
lstm_23/lstm_cell_23/SigmoidSigmoid#lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_23/lstm_cell_23/Sigmoid_1Sigmoid#lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€П
lstm_23/lstm_cell_23/mulMul"lstm_23/lstm_cell_23/Sigmoid_1:y:0lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
lstm_23/lstm_cell_23/ReluRelu#lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_23/lstm_cell_23/mul_1Mul lstm_23/lstm_cell_23/Sigmoid:y:0'lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€У
lstm_23/lstm_cell_23/add_1AddV2lstm_23/lstm_cell_23/mul:z:0lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€А
lstm_23/lstm_cell_23/Sigmoid_2Sigmoid#lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€u
lstm_23/lstm_cell_23/Relu_1Relulstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
lstm_23/lstm_cell_23/mul_2Mul"lstm_23/lstm_cell_23/Sigmoid_2:y:0)lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€v
%lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   f
$lstm_23/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_23/TensorArrayV2_1TensorListReserve.lstm_23/TensorArrayV2_1/element_shape:output:0-lstm_23/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“N
lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : т
lstm_23/whileWhile#lstm_23/while/loop_counter:output:0)lstm_23/while/maximum_iterations:output:0lstm_23/time:output:0 lstm_23/TensorArrayV2_1:handle:0lstm_23/zeros:output:0lstm_23/zeros_1:output:0 lstm_23/strided_slice_1:output:0?lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:03lstm_23_lstm_cell_23_matmul_readvariableop_resource5lstm_23_lstm_cell_23_matmul_1_readvariableop_resource4lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_23_while_body_285246*%
condR
lstm_23_while_cond_285245*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Й
8lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   о
*lstm_23/TensorArrayV2Stack/TensorListStackTensorListStacklstm_23/while:output:3Alstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsp
lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€i
lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѓ
lstm_23/strided_slice_3StridedSlice3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_23/strided_slice_3/stack:output:0(lstm_23/strided_slice_3/stack_1:output:0(lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskm
lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ѓ
lstm_23/transpose_1	Transpose3lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€c
lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    s
dropout_34/IdentityIdentity lstm_23/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0С
dense_18/MatMulMatMuldropout_34/Identity:output:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
dropout_35/IdentityIdentitydense_18/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0С
dense_19/MatMulMatMuldropout_35/Identity:output:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_19/ReluReludense_19/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
dropout_36/IdentityIdentitydense_19/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_20/MatMul/ReadVariableOpReadVariableOp'dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0С
dense_20/MatMulMatMuldropout_36/Identity:output:0&dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_20/BiasAdd/ReadVariableOpReadVariableOp(dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_20/BiasAddBiasAdddense_20/MatMul:product:0'dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
dense_20/ReluReludense_20/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€n
dropout_37/IdentityIdentitydense_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0С
dense_21/MatMulMatMuldropout_37/Identity:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
IdentityIdentitydense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€†
NoOpNoOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp ^dense_20/BiasAdd/ReadVariableOp^dense_20/MatMul/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp,^lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+^lstm_21/lstm_cell_21/MatMul/ReadVariableOp-^lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^lstm_21/while,^lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+^lstm_22/lstm_cell_22/MatMul/ReadVariableOp-^lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^lstm_22/while,^lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+^lstm_23/lstm_cell_23/MatMul/ReadVariableOp-^lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^lstm_23/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp2B
dense_20/BiasAdd/ReadVariableOpdense_20/BiasAdd/ReadVariableOp2@
dense_20/MatMul/ReadVariableOpdense_20/MatMul/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2Z
+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp+lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2X
*lstm_21/lstm_cell_21/MatMul/ReadVariableOp*lstm_21/lstm_cell_21/MatMul/ReadVariableOp2\
,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp,lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp2
lstm_21/whilelstm_21/while2Z
+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp+lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2X
*lstm_22/lstm_cell_22/MatMul/ReadVariableOp*lstm_22/lstm_cell_22/MatMul/ReadVariableOp2\
,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp,lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp2
lstm_22/whilelstm_22/while2Z
+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp+lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2X
*lstm_23/lstm_cell_23/MatMul/ReadVariableOp*lstm_23/lstm_cell_23/MatMul/ReadVariableOp2\
,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp,lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp2
lstm_23/whilelstm_23/while:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
И
г
lstm_21_while_cond_284964,
(lstm_21_while_lstm_21_while_loop_counter2
.lstm_21_while_lstm_21_while_maximum_iterations
lstm_21_while_placeholder
lstm_21_while_placeholder_1
lstm_21_while_placeholder_2
lstm_21_while_placeholder_3.
*lstm_21_while_less_lstm_21_strided_slice_1D
@lstm_21_while_lstm_21_while_cond_284964___redundant_placeholder0D
@lstm_21_while_lstm_21_while_cond_284964___redundant_placeholder1D
@lstm_21_while_lstm_21_while_cond_284964___redundant_placeholder2D
@lstm_21_while_lstm_21_while_cond_284964___redundant_placeholder3
lstm_21_while_identity
В
lstm_21/while/LessLesslstm_21_while_placeholder*lstm_21_while_less_lstm_21_strided_slice_1*
T0*
_output_shapes
: [
lstm_21/while/IdentityIdentitylstm_21/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_21_while_identitylstm_21/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_21/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_21/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
¬#
Ё
while_body_282110
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_22_282134_0:@-
while_lstm_cell_22_282136_0:@)
while_lstm_cell_22_282138_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_22_282134:@+
while_lstm_cell_22_282136:@'
while_lstm_cell_22_282138:@ИҐ*while/lstm_cell_22/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_22_282134_0while_lstm_cell_22_282136_0while_lstm_cell_22_282138_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282096№
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_22/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_22/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_22/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_22/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_22_282134while_lstm_cell_22_282134_0"8
while_lstm_cell_22_282136while_lstm_cell_22_282136_0"8
while_lstm_cell_22_282138while_lstm_cell_22_282138_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_22/StatefulPartitionedCall*while/lstm_cell_22/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
°÷
 
!__inference__wrapped_model_281682
lstm_21_inputR
@sequential_7_lstm_21_lstm_cell_21_matmul_readvariableop_resource:@T
Bsequential_7_lstm_21_lstm_cell_21_matmul_1_readvariableop_resource:@O
Asequential_7_lstm_21_lstm_cell_21_biasadd_readvariableop_resource:@R
@sequential_7_lstm_22_lstm_cell_22_matmul_readvariableop_resource:@T
Bsequential_7_lstm_22_lstm_cell_22_matmul_1_readvariableop_resource:@O
Asequential_7_lstm_22_lstm_cell_22_biasadd_readvariableop_resource:@R
@sequential_7_lstm_23_lstm_cell_23_matmul_readvariableop_resource:@T
Bsequential_7_lstm_23_lstm_cell_23_matmul_1_readvariableop_resource:@O
Asequential_7_lstm_23_lstm_cell_23_biasadd_readvariableop_resource:@F
4sequential_7_dense_18_matmul_readvariableop_resource:C
5sequential_7_dense_18_biasadd_readvariableop_resource:F
4sequential_7_dense_19_matmul_readvariableop_resource:C
5sequential_7_dense_19_biasadd_readvariableop_resource:F
4sequential_7_dense_20_matmul_readvariableop_resource:C
5sequential_7_dense_20_biasadd_readvariableop_resource:F
4sequential_7_dense_21_matmul_readvariableop_resource:C
5sequential_7_dense_21_biasadd_readvariableop_resource:
identityИҐ,sequential_7/dense_18/BiasAdd/ReadVariableOpҐ+sequential_7/dense_18/MatMul/ReadVariableOpҐ,sequential_7/dense_19/BiasAdd/ReadVariableOpҐ+sequential_7/dense_19/MatMul/ReadVariableOpҐ,sequential_7/dense_20/BiasAdd/ReadVariableOpҐ+sequential_7/dense_20/MatMul/ReadVariableOpҐ,sequential_7/dense_21/BiasAdd/ReadVariableOpҐ+sequential_7/dense_21/MatMul/ReadVariableOpҐ8sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpҐ7sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOpҐ9sequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpҐsequential_7/lstm_21/whileҐ8sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpҐ7sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOpҐ9sequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpҐsequential_7/lstm_22/whileҐ8sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpҐ7sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOpҐ9sequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpҐsequential_7/lstm_23/whilee
sequential_7/lstm_21/ShapeShapelstm_21_input*
T0*
_output_shapes
::нѕr
(sequential_7/lstm_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/lstm_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_7/lstm_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_7/lstm_21/strided_sliceStridedSlice#sequential_7/lstm_21/Shape:output:01sequential_7/lstm_21/strided_slice/stack:output:03sequential_7/lstm_21/strided_slice/stack_1:output:03sequential_7/lstm_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_7/lstm_21/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≤
!sequential_7/lstm_21/zeros/packedPack+sequential_7/lstm_21/strided_slice:output:0,sequential_7/lstm_21/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_7/lstm_21/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_7/lstm_21/zerosFill*sequential_7/lstm_21/zeros/packed:output:0)sequential_7/lstm_21/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%sequential_7/lstm_21/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ґ
#sequential_7/lstm_21/zeros_1/packedPack+sequential_7/lstm_21/strided_slice:output:0.sequential_7/lstm_21/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_7/lstm_21/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_7/lstm_21/zeros_1Fill,sequential_7/lstm_21/zeros_1/packed:output:0+sequential_7/lstm_21/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
#sequential_7/lstm_21/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ю
sequential_7/lstm_21/transpose	Transposelstm_21_input,sequential_7/lstm_21/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€|
sequential_7/lstm_21/Shape_1Shape"sequential_7/lstm_21/transpose:y:0*
T0*
_output_shapes
::нѕt
*sequential_7/lstm_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_7/lstm_21/strided_slice_1StridedSlice%sequential_7/lstm_21/Shape_1:output:03sequential_7/lstm_21/strided_slice_1/stack:output:05sequential_7/lstm_21/strided_slice_1/stack_1:output:05sequential_7/lstm_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_7/lstm_21/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_7/lstm_21/TensorArrayV2TensorListReserve9sequential_7/lstm_21/TensorArrayV2/element_shape:output:0-sequential_7/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_7/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Я
<sequential_7/lstm_21/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_7/lstm_21/transpose:y:0Ssequential_7/lstm_21/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_7/lstm_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_7/lstm_21/strided_slice_2StridedSlice"sequential_7/lstm_21/transpose:y:03sequential_7/lstm_21/strided_slice_2/stack:output:05sequential_7/lstm_21/strided_slice_2/stack_1:output:05sequential_7/lstm_21/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЄ
7sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp@sequential_7_lstm_21_lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0‘
(sequential_7/lstm_21/lstm_cell_21/MatMulMatMul-sequential_7/lstm_21/strided_slice_2:output:0?sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Љ
9sequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOpBsequential_7_lstm_21_lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0ќ
*sequential_7/lstm_21/lstm_cell_21/MatMul_1MatMul#sequential_7/lstm_21/zeros:output:0Asequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
%sequential_7/lstm_21/lstm_cell_21/addAddV22sequential_7/lstm_21/lstm_cell_21/MatMul:product:04sequential_7/lstm_21/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ґ
8sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOpAsequential_7_lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0”
)sequential_7/lstm_21/lstm_cell_21/BiasAddBiasAdd)sequential_7/lstm_21/lstm_cell_21/add:z:0@sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@s
1sequential_7/lstm_21/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_7/lstm_21/lstm_cell_21/splitSplit:sequential_7/lstm_21/lstm_cell_21/split/split_dim:output:02sequential_7/lstm_21/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitШ
)sequential_7/lstm_21/lstm_cell_21/SigmoidSigmoid0sequential_7/lstm_21/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_21/lstm_cell_21/Sigmoid_1Sigmoid0sequential_7/lstm_21/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ґ
%sequential_7/lstm_21/lstm_cell_21/mulMul/sequential_7/lstm_21/lstm_cell_21/Sigmoid_1:y:0%sequential_7/lstm_21/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&sequential_7/lstm_21/lstm_cell_21/ReluRelu0sequential_7/lstm_21/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€≈
'sequential_7/lstm_21/lstm_cell_21/mul_1Mul-sequential_7/lstm_21/lstm_cell_21/Sigmoid:y:04sequential_7/lstm_21/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ї
'sequential_7/lstm_21/lstm_cell_21/add_1AddV2)sequential_7/lstm_21/lstm_cell_21/mul:z:0+sequential_7/lstm_21/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_21/lstm_cell_21/Sigmoid_2Sigmoid0sequential_7/lstm_21/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€П
(sequential_7/lstm_21/lstm_cell_21/Relu_1Relu+sequential_7/lstm_21/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€…
'sequential_7/lstm_21/lstm_cell_21/mul_2Mul/sequential_7/lstm_21/lstm_cell_21/Sigmoid_2:y:06sequential_7/lstm_21/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
2sequential_7/lstm_21/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ч
$sequential_7/lstm_21/TensorArrayV2_1TensorListReserve;sequential_7/lstm_21/TensorArrayV2_1/element_shape:output:0-sequential_7/lstm_21/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_7/lstm_21/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_7/lstm_21/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_7/lstm_21/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_7/lstm_21/whileWhile0sequential_7/lstm_21/while/loop_counter:output:06sequential_7/lstm_21/while/maximum_iterations:output:0"sequential_7/lstm_21/time:output:0-sequential_7/lstm_21/TensorArrayV2_1:handle:0#sequential_7/lstm_21/zeros:output:0%sequential_7/lstm_21/zeros_1:output:0-sequential_7/lstm_21/strided_slice_1:output:0Lsequential_7/lstm_21/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_7_lstm_21_lstm_cell_21_matmul_readvariableop_resourceBsequential_7_lstm_21_lstm_cell_21_matmul_1_readvariableop_resourceAsequential_7_lstm_21_lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_7_lstm_21_while_body_281285*2
cond*R(
&sequential_7_lstm_21_while_cond_281284*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Ц
Esequential_7/lstm_21/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Б
7sequential_7/lstm_21/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_7/lstm_21/while:output:3Nsequential_7/lstm_21/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0}
*sequential_7/lstm_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_7/lstm_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_7/lstm_21/strided_slice_3StridedSlice@sequential_7/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:03sequential_7/lstm_21/strided_slice_3/stack:output:05sequential_7/lstm_21/strided_slice_3/stack_1:output:05sequential_7/lstm_21/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskz
%sequential_7/lstm_21/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_7/lstm_21/transpose_1	Transpose@sequential_7/lstm_21/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_7/lstm_21/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
sequential_7/lstm_21/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
 sequential_7/dropout_32/IdentityIdentity$sequential_7/lstm_21/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€Б
sequential_7/lstm_22/ShapeShape)sequential_7/dropout_32/Identity:output:0*
T0*
_output_shapes
::нѕr
(sequential_7/lstm_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/lstm_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_7/lstm_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_7/lstm_22/strided_sliceStridedSlice#sequential_7/lstm_22/Shape:output:01sequential_7/lstm_22/strided_slice/stack:output:03sequential_7/lstm_22/strided_slice/stack_1:output:03sequential_7/lstm_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_7/lstm_22/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≤
!sequential_7/lstm_22/zeros/packedPack+sequential_7/lstm_22/strided_slice:output:0,sequential_7/lstm_22/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_7/lstm_22/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_7/lstm_22/zerosFill*sequential_7/lstm_22/zeros/packed:output:0)sequential_7/lstm_22/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%sequential_7/lstm_22/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ґ
#sequential_7/lstm_22/zeros_1/packedPack+sequential_7/lstm_22/strided_slice:output:0.sequential_7/lstm_22/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_7/lstm_22/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_7/lstm_22/zeros_1Fill,sequential_7/lstm_22/zeros_1/packed:output:0+sequential_7/lstm_22/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
#sequential_7/lstm_22/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
sequential_7/lstm_22/transpose	Transpose)sequential_7/dropout_32/Identity:output:0,sequential_7/lstm_22/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€|
sequential_7/lstm_22/Shape_1Shape"sequential_7/lstm_22/transpose:y:0*
T0*
_output_shapes
::нѕt
*sequential_7/lstm_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_7/lstm_22/strided_slice_1StridedSlice%sequential_7/lstm_22/Shape_1:output:03sequential_7/lstm_22/strided_slice_1/stack:output:05sequential_7/lstm_22/strided_slice_1/stack_1:output:05sequential_7/lstm_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_7/lstm_22/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_7/lstm_22/TensorArrayV2TensorListReserve9sequential_7/lstm_22/TensorArrayV2/element_shape:output:0-sequential_7/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_7/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Я
<sequential_7/lstm_22/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_7/lstm_22/transpose:y:0Ssequential_7/lstm_22/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_7/lstm_22/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_22/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_22/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_7/lstm_22/strided_slice_2StridedSlice"sequential_7/lstm_22/transpose:y:03sequential_7/lstm_22/strided_slice_2/stack:output:05sequential_7/lstm_22/strided_slice_2/stack_1:output:05sequential_7/lstm_22/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЄ
7sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp@sequential_7_lstm_22_lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0‘
(sequential_7/lstm_22/lstm_cell_22/MatMulMatMul-sequential_7/lstm_22/strided_slice_2:output:0?sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Љ
9sequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOpBsequential_7_lstm_22_lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0ќ
*sequential_7/lstm_22/lstm_cell_22/MatMul_1MatMul#sequential_7/lstm_22/zeros:output:0Asequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
%sequential_7/lstm_22/lstm_cell_22/addAddV22sequential_7/lstm_22/lstm_cell_22/MatMul:product:04sequential_7/lstm_22/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ґ
8sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOpAsequential_7_lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0”
)sequential_7/lstm_22/lstm_cell_22/BiasAddBiasAdd)sequential_7/lstm_22/lstm_cell_22/add:z:0@sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@s
1sequential_7/lstm_22/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_7/lstm_22/lstm_cell_22/splitSplit:sequential_7/lstm_22/lstm_cell_22/split/split_dim:output:02sequential_7/lstm_22/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitШ
)sequential_7/lstm_22/lstm_cell_22/SigmoidSigmoid0sequential_7/lstm_22/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_22/lstm_cell_22/Sigmoid_1Sigmoid0sequential_7/lstm_22/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ґ
%sequential_7/lstm_22/lstm_cell_22/mulMul/sequential_7/lstm_22/lstm_cell_22/Sigmoid_1:y:0%sequential_7/lstm_22/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&sequential_7/lstm_22/lstm_cell_22/ReluRelu0sequential_7/lstm_22/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€≈
'sequential_7/lstm_22/lstm_cell_22/mul_1Mul-sequential_7/lstm_22/lstm_cell_22/Sigmoid:y:04sequential_7/lstm_22/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ї
'sequential_7/lstm_22/lstm_cell_22/add_1AddV2)sequential_7/lstm_22/lstm_cell_22/mul:z:0+sequential_7/lstm_22/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_22/lstm_cell_22/Sigmoid_2Sigmoid0sequential_7/lstm_22/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€П
(sequential_7/lstm_22/lstm_cell_22/Relu_1Relu+sequential_7/lstm_22/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€…
'sequential_7/lstm_22/lstm_cell_22/mul_2Mul/sequential_7/lstm_22/lstm_cell_22/Sigmoid_2:y:06sequential_7/lstm_22/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
2sequential_7/lstm_22/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ч
$sequential_7/lstm_22/TensorArrayV2_1TensorListReserve;sequential_7/lstm_22/TensorArrayV2_1/element_shape:output:0-sequential_7/lstm_22/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_7/lstm_22/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_7/lstm_22/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_7/lstm_22/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_7/lstm_22/whileWhile0sequential_7/lstm_22/while/loop_counter:output:06sequential_7/lstm_22/while/maximum_iterations:output:0"sequential_7/lstm_22/time:output:0-sequential_7/lstm_22/TensorArrayV2_1:handle:0#sequential_7/lstm_22/zeros:output:0%sequential_7/lstm_22/zeros_1:output:0-sequential_7/lstm_22/strided_slice_1:output:0Lsequential_7/lstm_22/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_7_lstm_22_lstm_cell_22_matmul_readvariableop_resourceBsequential_7_lstm_22_lstm_cell_22_matmul_1_readvariableop_resourceAsequential_7_lstm_22_lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_7_lstm_22_while_body_281425*2
cond*R(
&sequential_7_lstm_22_while_cond_281424*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Ц
Esequential_7/lstm_22/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Б
7sequential_7/lstm_22/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_7/lstm_22/while:output:3Nsequential_7/lstm_22/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0}
*sequential_7/lstm_22/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_7/lstm_22/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_22/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_7/lstm_22/strided_slice_3StridedSlice@sequential_7/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:03sequential_7/lstm_22/strided_slice_3/stack:output:05sequential_7/lstm_22/strided_slice_3/stack_1:output:05sequential_7/lstm_22/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskz
%sequential_7/lstm_22/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_7/lstm_22/transpose_1	Transpose@sequential_7/lstm_22/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_7/lstm_22/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
sequential_7/lstm_22/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    И
 sequential_7/dropout_33/IdentityIdentity$sequential_7/lstm_22/transpose_1:y:0*
T0*+
_output_shapes
:€€€€€€€€€Б
sequential_7/lstm_23/ShapeShape)sequential_7/dropout_33/Identity:output:0*
T0*
_output_shapes
::нѕr
(sequential_7/lstm_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*sequential_7/lstm_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*sequential_7/lstm_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
"sequential_7/lstm_23/strided_sliceStridedSlice#sequential_7/lstm_23/Shape:output:01sequential_7/lstm_23/strided_slice/stack:output:03sequential_7/lstm_23/strided_slice/stack_1:output:03sequential_7/lstm_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential_7/lstm_23/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≤
!sequential_7/lstm_23/zeros/packedPack+sequential_7/lstm_23/strided_slice:output:0,sequential_7/lstm_23/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:e
 sequential_7/lstm_23/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ђ
sequential_7/lstm_23/zerosFill*sequential_7/lstm_23/zeros/packed:output:0)sequential_7/lstm_23/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%sequential_7/lstm_23/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ґ
#sequential_7/lstm_23/zeros_1/packedPack+sequential_7/lstm_23/strided_slice:output:0.sequential_7/lstm_23/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:g
"sequential_7/lstm_23/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
sequential_7/lstm_23/zeros_1Fill,sequential_7/lstm_23/zeros_1/packed:output:0+sequential_7/lstm_23/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
#sequential_7/lstm_23/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ї
sequential_7/lstm_23/transpose	Transpose)sequential_7/dropout_33/Identity:output:0,sequential_7/lstm_23/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€|
sequential_7/lstm_23/Shape_1Shape"sequential_7/lstm_23/transpose:y:0*
T0*
_output_shapes
::нѕt
*sequential_7/lstm_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ƒ
$sequential_7/lstm_23/strided_slice_1StridedSlice%sequential_7/lstm_23/Shape_1:output:03sequential_7/lstm_23/strided_slice_1/stack:output:05sequential_7/lstm_23/strided_slice_1/stack_1:output:05sequential_7/lstm_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
0sequential_7/lstm_23/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€у
"sequential_7/lstm_23/TensorArrayV2TensorListReserve9sequential_7/lstm_23/TensorArrayV2/element_shape:output:0-sequential_7/lstm_23/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ы
Jsequential_7/lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Я
<sequential_7/lstm_23/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"sequential_7/lstm_23/transpose:y:0Ssequential_7/lstm_23/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“t
*sequential_7/lstm_23/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_23/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,sequential_7/lstm_23/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
$sequential_7/lstm_23/strided_slice_2StridedSlice"sequential_7/lstm_23/transpose:y:03sequential_7/lstm_23/strided_slice_2/stack:output:05sequential_7/lstm_23/strided_slice_2/stack_1:output:05sequential_7/lstm_23/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskЄ
7sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp@sequential_7_lstm_23_lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0‘
(sequential_7/lstm_23/lstm_cell_23/MatMulMatMul-sequential_7/lstm_23/strided_slice_2:output:0?sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Љ
9sequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOpBsequential_7_lstm_23_lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0ќ
*sequential_7/lstm_23/lstm_cell_23/MatMul_1MatMul#sequential_7/lstm_23/zeros:output:0Asequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@ 
%sequential_7/lstm_23/lstm_cell_23/addAddV22sequential_7/lstm_23/lstm_cell_23/MatMul:product:04sequential_7/lstm_23/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@ґ
8sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOpAsequential_7_lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0”
)sequential_7/lstm_23/lstm_cell_23/BiasAddBiasAdd)sequential_7/lstm_23/lstm_cell_23/add:z:0@sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@s
1sequential_7/lstm_23/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ь
'sequential_7/lstm_23/lstm_cell_23/splitSplit:sequential_7/lstm_23/lstm_cell_23/split/split_dim:output:02sequential_7/lstm_23/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitШ
)sequential_7/lstm_23/lstm_cell_23/SigmoidSigmoid0sequential_7/lstm_23/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_23/lstm_cell_23/Sigmoid_1Sigmoid0sequential_7/lstm_23/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ґ
%sequential_7/lstm_23/lstm_cell_23/mulMul/sequential_7/lstm_23/lstm_cell_23/Sigmoid_1:y:0%sequential_7/lstm_23/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Т
&sequential_7/lstm_23/lstm_cell_23/ReluRelu0sequential_7/lstm_23/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€≈
'sequential_7/lstm_23/lstm_cell_23/mul_1Mul-sequential_7/lstm_23/lstm_cell_23/Sigmoid:y:04sequential_7/lstm_23/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Ї
'sequential_7/lstm_23/lstm_cell_23/add_1AddV2)sequential_7/lstm_23/lstm_cell_23/mul:z:0+sequential_7/lstm_23/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
+sequential_7/lstm_23/lstm_cell_23/Sigmoid_2Sigmoid0sequential_7/lstm_23/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€П
(sequential_7/lstm_23/lstm_cell_23/Relu_1Relu+sequential_7/lstm_23/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€…
'sequential_7/lstm_23/lstm_cell_23/mul_2Mul/sequential_7/lstm_23/lstm_cell_23/Sigmoid_2:y:06sequential_7/lstm_23/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Г
2sequential_7/lstm_23/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
1sequential_7/lstm_23/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Д
$sequential_7/lstm_23/TensorArrayV2_1TensorListReserve;sequential_7/lstm_23/TensorArrayV2_1/element_shape:output:0:sequential_7/lstm_23/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“[
sequential_7/lstm_23/timeConst*
_output_shapes
: *
dtype0*
value	B : x
-sequential_7/lstm_23/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€i
'sequential_7/lstm_23/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_7/lstm_23/whileWhile0sequential_7/lstm_23/while/loop_counter:output:06sequential_7/lstm_23/while/maximum_iterations:output:0"sequential_7/lstm_23/time:output:0-sequential_7/lstm_23/TensorArrayV2_1:handle:0#sequential_7/lstm_23/zeros:output:0%sequential_7/lstm_23/zeros_1:output:0-sequential_7/lstm_23/strided_slice_1:output:0Lsequential_7/lstm_23/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_7_lstm_23_lstm_cell_23_matmul_readvariableop_resourceBsequential_7_lstm_23_lstm_cell_23_matmul_1_readvariableop_resourceAsequential_7_lstm_23_lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_7_lstm_23_while_body_281566*2
cond*R(
&sequential_7_lstm_23_while_cond_281565*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Ц
Esequential_7/lstm_23/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Х
7sequential_7/lstm_23/TensorArrayV2Stack/TensorListStackTensorListStack#sequential_7/lstm_23/while:output:3Nsequential_7/lstm_23/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elements}
*sequential_7/lstm_23/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€v
,sequential_7/lstm_23/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,sequential_7/lstm_23/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:р
$sequential_7/lstm_23/strided_slice_3StridedSlice@sequential_7/lstm_23/TensorArrayV2Stack/TensorListStack:tensor:03sequential_7/lstm_23/strided_slice_3/stack:output:05sequential_7/lstm_23/strided_slice_3/stack_1:output:05sequential_7/lstm_23/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskz
%sequential_7/lstm_23/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ’
 sequential_7/lstm_23/transpose_1	Transpose@sequential_7/lstm_23/TensorArrayV2Stack/TensorListStack:tensor:0.sequential_7/lstm_23/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€p
sequential_7/lstm_23/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Н
 sequential_7/dropout_34/IdentityIdentity-sequential_7/lstm_23/strided_slice_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€†
+sequential_7/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_18_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Є
sequential_7/dense_18/MatMulMatMul)sequential_7/dropout_34/Identity:output:03sequential_7/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_18_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_7/dense_18/BiasAddBiasAdd&sequential_7/dense_18/MatMul:product:04sequential_7/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
sequential_7/dense_18/ReluRelu&sequential_7/dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
 sequential_7/dropout_35/IdentityIdentity(sequential_7/dense_18/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€†
+sequential_7/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_19_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Є
sequential_7/dense_19/MatMulMatMul)sequential_7/dropout_35/Identity:output:03sequential_7/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_7/dense_19/BiasAddBiasAdd&sequential_7/dense_19/MatMul:product:04sequential_7/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
sequential_7/dense_19/ReluRelu&sequential_7/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
 sequential_7/dropout_36/IdentityIdentity(sequential_7/dense_19/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€†
+sequential_7/dense_20/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_20_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Є
sequential_7/dense_20/MatMulMatMul)sequential_7/dropout_36/Identity:output:03sequential_7/dense_20/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/dense_20/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_20_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_7/dense_20/BiasAddBiasAdd&sequential_7/dense_20/MatMul:product:04sequential_7/dense_20/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
sequential_7/dense_20/ReluRelu&sequential_7/dense_20/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
 sequential_7/dropout_37/IdentityIdentity(sequential_7/dense_20/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€†
+sequential_7/dense_21/MatMul/ReadVariableOpReadVariableOp4sequential_7_dense_21_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Є
sequential_7/dense_21/MatMulMatMul)sequential_7/dropout_37/Identity:output:03sequential_7/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ю
,sequential_7/dense_21/BiasAdd/ReadVariableOpReadVariableOp5sequential_7_dense_21_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Є
sequential_7/dense_21/BiasAddBiasAdd&sequential_7/dense_21/MatMul:product:04sequential_7/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€u
IdentityIdentity&sequential_7/dense_21/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€§
NoOpNoOp-^sequential_7/dense_18/BiasAdd/ReadVariableOp,^sequential_7/dense_18/MatMul/ReadVariableOp-^sequential_7/dense_19/BiasAdd/ReadVariableOp,^sequential_7/dense_19/MatMul/ReadVariableOp-^sequential_7/dense_20/BiasAdd/ReadVariableOp,^sequential_7/dense_20/MatMul/ReadVariableOp-^sequential_7/dense_21/BiasAdd/ReadVariableOp,^sequential_7/dense_21/MatMul/ReadVariableOp9^sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp8^sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOp:^sequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp^sequential_7/lstm_21/while9^sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp8^sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOp:^sequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp^sequential_7/lstm_22/while9^sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp8^sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOp:^sequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp^sequential_7/lstm_23/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2\
,sequential_7/dense_18/BiasAdd/ReadVariableOp,sequential_7/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_18/MatMul/ReadVariableOp+sequential_7/dense_18/MatMul/ReadVariableOp2\
,sequential_7/dense_19/BiasAdd/ReadVariableOp,sequential_7/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_19/MatMul/ReadVariableOp+sequential_7/dense_19/MatMul/ReadVariableOp2\
,sequential_7/dense_20/BiasAdd/ReadVariableOp,sequential_7/dense_20/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_20/MatMul/ReadVariableOp+sequential_7/dense_20/MatMul/ReadVariableOp2\
,sequential_7/dense_21/BiasAdd/ReadVariableOp,sequential_7/dense_21/BiasAdd/ReadVariableOp2Z
+sequential_7/dense_21/MatMul/ReadVariableOp+sequential_7/dense_21/MatMul/ReadVariableOp2t
8sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp8sequential_7/lstm_21/lstm_cell_21/BiasAdd/ReadVariableOp2r
7sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOp7sequential_7/lstm_21/lstm_cell_21/MatMul/ReadVariableOp2v
9sequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp9sequential_7/lstm_21/lstm_cell_21/MatMul_1/ReadVariableOp28
sequential_7/lstm_21/whilesequential_7/lstm_21/while2t
8sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp8sequential_7/lstm_22/lstm_cell_22/BiasAdd/ReadVariableOp2r
7sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOp7sequential_7/lstm_22/lstm_cell_22/MatMul/ReadVariableOp2v
9sequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp9sequential_7/lstm_22/lstm_cell_22/MatMul_1/ReadVariableOp28
sequential_7/lstm_22/whilesequential_7/lstm_22/while2t
8sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp8sequential_7/lstm_23/lstm_cell_23/BiasAdd/ReadVariableOp2r
7sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOp7sequential_7/lstm_23/lstm_cell_23/MatMul/ReadVariableOp2v
9sequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp9sequential_7/lstm_23/lstm_cell_23/MatMul_1/ReadVariableOp28
sequential_7/lstm_23/whilesequential_7/lstm_23/while:Z V
+
_output_shapes
:€€€€€€€€€
'
_user_specified_namelstm_21_input
у
d
+__inference_dropout_37_layer_call_fn_287418

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283325o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ћ
Б
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_281746

inputs

states
states_10
matmul_readvariableop_resource:@2
 matmul_1_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@x
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0m
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
addAddV2MatMul:product:0MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0m
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€N
ReluRelusplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_namestates
И
г
lstm_22_while_cond_284613,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3.
*lstm_22_while_less_lstm_22_strided_slice_1D
@lstm_22_while_lstm_22_while_cond_284613___redundant_placeholder0D
@lstm_22_while_lstm_22_while_cond_284613___redundant_placeholder1D
@lstm_22_while_lstm_22_while_cond_284613___redundant_placeholder2D
@lstm_22_while_lstm_22_while_cond_284613___redundant_placeholder3
lstm_22_while_identity
В
lstm_22/while/LessLesslstm_22_while_placeholder*lstm_22_while_less_lstm_22_strided_slice_1*
T0*
_output_shapes
: [
lstm_22/while/IdentityIdentitylstm_22/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_22_while_identitylstm_22/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::R N

_output_shapes
: 
4
_user_specified_namelstm_22/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
µJ
Ш
C__inference_lstm_22_layer_call_and_return_conditional_losses_283645

inputs=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_283561*
condR
while_cond_283560*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_287186
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_287186___redundant_placeholder04
0while_while_cond_287186___redundant_placeholder14
0while_while_cond_287186___redundant_placeholder24
0while_while_cond_287186___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ч	
√
while_cond_282254
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282254___redundant_placeholder04
0while_while_cond_282254___redundant_placeholder14
0while_while_cond_282254___redundant_placeholder24
0while_while_cond_282254___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
ў
d
F__inference_dropout_37_layer_call_and_return_conditional_losses_287440

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
™B
 

lstm_22_while_body_284614,
(lstm_22_while_lstm_22_while_loop_counter2
.lstm_22_while_lstm_22_while_maximum_iterations
lstm_22_while_placeholder
lstm_22_while_placeholder_1
lstm_22_while_placeholder_2
lstm_22_while_placeholder_3+
'lstm_22_while_lstm_22_strided_slice_1_0g
clstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0M
;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0:@O
=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0:@J
<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0:@
lstm_22_while_identity
lstm_22_while_identity_1
lstm_22_while_identity_2
lstm_22_while_identity_3
lstm_22_while_identity_4
lstm_22_while_identity_5)
%lstm_22_while_lstm_22_strided_slice_1e
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorK
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource:@M
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource:@H
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpҐ0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpҐ2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpР
?lstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ќ
1lstm_22/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0lstm_22_while_placeholderHlstm_22/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0ђ
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0—
!lstm_22/while/lstm_cell_22/MatMulMatMul8lstm_22/while/TensorArrayV2Read/TensorListGetItem:item:08lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@∞
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0Є
#lstm_22/while/lstm_cell_22/MatMul_1MatMullstm_22_while_placeholder_2:lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@µ
lstm_22/while/lstm_cell_22/addAddV2+lstm_22/while/lstm_cell_22/MatMul:product:0-lstm_22/while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@™
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0Њ
"lstm_22/while/lstm_cell_22/BiasAddBiasAdd"lstm_22/while/lstm_cell_22/add:z:09lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@l
*lstm_22/while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :З
 lstm_22/while/lstm_cell_22/splitSplit3lstm_22/while/lstm_cell_22/split/split_dim:output:0+lstm_22/while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitК
"lstm_22/while/lstm_cell_22/SigmoidSigmoid)lstm_22/while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_22/while/lstm_cell_22/Sigmoid_1Sigmoid)lstm_22/while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ю
lstm_22/while/lstm_cell_22/mulMul(lstm_22/while/lstm_cell_22/Sigmoid_1:y:0lstm_22_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€Д
lstm_22/while/lstm_cell_22/ReluRelu)lstm_22/while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€∞
 lstm_22/while/lstm_cell_22/mul_1Mul&lstm_22/while/lstm_cell_22/Sigmoid:y:0-lstm_22/while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€•
 lstm_22/while/lstm_cell_22/add_1AddV2"lstm_22/while/lstm_cell_22/mul:z:0$lstm_22/while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€М
$lstm_22/while/lstm_cell_22/Sigmoid_2Sigmoid)lstm_22/while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€Б
!lstm_22/while/lstm_cell_22/Relu_1Relu$lstm_22/while/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 lstm_22/while/lstm_cell_22/mul_2Mul(lstm_22/while/lstm_cell_22/Sigmoid_2:y:0/lstm_22/while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€е
2lstm_22/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_22_while_placeholder_1lstm_22_while_placeholder$lstm_22/while/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“U
lstm_22/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_22/while/addAddV2lstm_22_while_placeholderlstm_22/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_22/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :З
lstm_22/while/add_1AddV2(lstm_22_while_lstm_22_while_loop_counterlstm_22/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_22/while/IdentityIdentitylstm_22/while/add_1:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: К
lstm_22/while/Identity_1Identity.lstm_22_while_lstm_22_while_maximum_iterations^lstm_22/while/NoOp*
T0*
_output_shapes
: q
lstm_22/while/Identity_2Identitylstm_22/while/add:z:0^lstm_22/while/NoOp*
T0*
_output_shapes
: Ю
lstm_22/while/Identity_3IdentityBlstm_22/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_22/while/NoOp*
T0*
_output_shapes
: С
lstm_22/while/Identity_4Identity$lstm_22/while/lstm_cell_22/mul_2:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€С
lstm_22/while/Identity_5Identity$lstm_22/while/lstm_cell_22/add_1:z:0^lstm_22/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
lstm_22/while/NoOpNoOp2^lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1^lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp3^lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_22_while_identitylstm_22/while/Identity:output:0"=
lstm_22_while_identity_1!lstm_22/while/Identity_1:output:0"=
lstm_22_while_identity_2!lstm_22/while/Identity_2:output:0"=
lstm_22_while_identity_3!lstm_22/while/Identity_3:output:0"=
lstm_22_while_identity_4!lstm_22/while/Identity_4:output:0"=
lstm_22_while_identity_5!lstm_22/while/Identity_5:output:0"P
%lstm_22_while_lstm_22_strided_slice_1'lstm_22_while_lstm_22_strided_slice_1_0"z
:lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource<lstm_22_while_lstm_cell_22_biasadd_readvariableop_resource_0"|
;lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource=lstm_22_while_lstm_cell_22_matmul_1_readvariableop_resource_0"x
9lstm_22_while_lstm_cell_22_matmul_readvariableop_resource;lstm_22_while_lstm_cell_22_matmul_readvariableop_resource_0"»
alstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensorclstm_22_while_tensorarrayv2read_tensorlistgetitem_lstm_22_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2f
1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp1lstm_22/while/lstm_cell_22/BiasAdd/ReadVariableOp2d
0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp0lstm_22/while/lstm_cell_22/MatMul/ReadVariableOp2h
2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp2lstm_22/while/lstm_cell_22/MatMul_1/ReadVariableOp:R N

_output_shapes
: 
4
_user_specified_namelstm_22/while/loop_counter:XT

_output_shapes
: 
:
_user_specified_name" lstm_22/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ў
d
F__inference_dropout_36_layer_call_and_return_conditional_losses_283837

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_282798
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_21_matmul_readvariableop_resource_0:@G
5while_lstm_cell_21_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_21_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_21_matmul_readvariableop_resource:@E
3while_lstm_cell_21_matmul_1_readvariableop_resource:@@
2while_lstm_cell_21_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_21/BiasAdd/ReadVariableOpҐ(while/lstm_cell_21/MatMul/ReadVariableOpҐ*while/lstm_cell_21/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_21/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_21_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_21_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_21/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_21/addAddV2#while/lstm_cell_21/MatMul:product:0%while/lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_21_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_21/BiasAddBiasAddwhile/lstm_cell_21/add:z:01while/lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0#while/lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_21/SigmoidSigmoid!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_1Sigmoid!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_21/mulMul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_21/ReluRelu!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_21/mul_1Mulwhile/lstm_cell_21/Sigmoid:y:0%while/lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_21/add_1AddV2while/lstm_cell_21/mul:z:0while/lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_21/Sigmoid_2Sigmoid!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_21/Relu_1Reluwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_21/mul_2Mul while/lstm_cell_21/Sigmoid_2:y:0'while/lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_21/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_21/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_21/BiasAdd/ReadVariableOp)^while/lstm_cell_21/MatMul/ReadVariableOp+^while/lstm_cell_21/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_21_biasadd_readvariableop_resource4while_lstm_cell_21_biasadd_readvariableop_resource_0"l
3while_lstm_cell_21_matmul_1_readvariableop_resource5while_lstm_cell_21_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_21_matmul_readvariableop_resource3while_lstm_cell_21_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_21/BiasAdd/ReadVariableOp)while/lstm_cell_21/BiasAdd/ReadVariableOp2T
(while/lstm_cell_21/MatMul/ReadVariableOp(while/lstm_cell_21/MatMul/ReadVariableOp2X
*while/lstm_cell_21/MatMul_1/ReadVariableOp*while/lstm_cell_21/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ь
≤
(__inference_lstm_21_layer_call_fn_285395

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_282882s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Џ
ї
-__inference_sequential_7_layer_call_fn_284408

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:
	unknown_9:

unknown_10:

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*3
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_sequential_7_layer_call_and_return_conditional_losses_284000o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
э9
 
while_body_283718
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_23_matmul_readvariableop_resource_0:@G
5while_lstm_cell_23_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_23_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_23_matmul_readvariableop_resource:@E
3while_lstm_cell_23_matmul_1_readvariableop_resource:@@
2while_lstm_cell_23_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_23/BiasAdd/ReadVariableOpҐ(while/lstm_cell_23/MatMul/ReadVariableOpҐ*while/lstm_cell_23/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_23/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_23_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_23/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_23_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_23/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_23/addAddV2#while/lstm_cell_23/MatMul:product:0%while/lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_23_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_23/BiasAddBiasAddwhile/lstm_cell_23/add:z:01while/lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_23/splitSplit+while/lstm_cell_23/split/split_dim:output:0#while/lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_23/SigmoidSigmoid!while/lstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_1Sigmoid!while/lstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_23/mulMul while/lstm_cell_23/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_23/ReluRelu!while/lstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_23/mul_1Mulwhile/lstm_cell_23/Sigmoid:y:0%while/lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_23/add_1AddV2while/lstm_cell_23/mul:z:0while/lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_23/Sigmoid_2Sigmoid!while/lstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_23/Relu_1Reluwhile/lstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_23/mul_2Mul while/lstm_cell_23/Sigmoid_2:y:0'while/lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : н
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_23/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_23/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_23/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_23/BiasAdd/ReadVariableOp)^while/lstm_cell_23/MatMul/ReadVariableOp+^while/lstm_cell_23/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_23_biasadd_readvariableop_resource4while_lstm_cell_23_biasadd_readvariableop_resource_0"l
3while_lstm_cell_23_matmul_1_readvariableop_resource5while_lstm_cell_23_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_23_matmul_readvariableop_resource3while_lstm_cell_23_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_23/BiasAdd/ReadVariableOp)while/lstm_cell_23/BiasAdd/ReadVariableOp2T
(while/lstm_cell_23/MatMul/ReadVariableOp(while/lstm_cell_23/MatMul/ReadVariableOp2X
*while/lstm_cell_23/MatMul_1/ReadVariableOp*while/lstm_cell_23/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
Ч	
√
while_cond_286107
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_286107___redundant_placeholder04
0while_while_cond_286107___redundant_placeholder14
0while_while_cond_286107___redundant_placeholder24
0while_while_cond_286107___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
е6
З
H__inference_sequential_7_layer_call_and_return_conditional_losses_284000

inputs 
lstm_21_283952:@ 
lstm_21_283954:@
lstm_21_283956:@ 
lstm_22_283960:@ 
lstm_22_283962:@
lstm_22_283964:@ 
lstm_23_283968:@ 
lstm_23_283970:@
lstm_23_283972:@!
dense_18_283976:
dense_18_283978:!
dense_19_283982:
dense_19_283984:!
dense_20_283988:
dense_20_283990:!
dense_21_283994:
dense_21_283996:
identityИҐ dense_18/StatefulPartitionedCallҐ dense_19/StatefulPartitionedCallҐ dense_20/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐlstm_21/StatefulPartitionedCallҐlstm_22/StatefulPartitionedCallҐlstm_23/StatefulPartitionedCallВ
lstm_21/StatefulPartitionedCallStatefulPartitionedCallinputslstm_21_283952lstm_21_283954lstm_21_283956*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_21_layer_call_and_return_conditional_losses_283489в
dropout_32/PartitionedCallPartitionedCall(lstm_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_32_layer_call_and_return_conditional_losses_283501Я
lstm_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_32/PartitionedCall:output:0lstm_22_283960lstm_22_283962lstm_22_283964*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283645в
dropout_33/PartitionedCallPartitionedCall(lstm_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_33_layer_call_and_return_conditional_losses_283657Ы
lstm_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_33/PartitionedCall:output:0lstm_23_283968lstm_23_283970lstm_23_283972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_23_layer_call_and_return_conditional_losses_283803ё
dropout_34/PartitionedCallPartitionedCall(lstm_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_34_layer_call_and_return_conditional_losses_283815Н
 dense_18/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_18_283976dense_18_283978*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_283245я
dropout_35/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_35_layer_call_and_return_conditional_losses_283826Н
 dense_19/StatefulPartitionedCallStatefulPartitionedCall#dropout_35/PartitionedCall:output:0dense_19_283982dense_19_283984*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_283276я
dropout_36/PartitionedCallPartitionedCall)dense_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283837Н
 dense_20/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0dense_20_283988dense_20_283990*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_20_layer_call_and_return_conditional_losses_283307я
dropout_37/PartitionedCallPartitionedCall)dense_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_37_layer_call_and_return_conditional_losses_283848Н
 dense_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0dense_21_283994dense_21_283996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_283337x
IdentityIdentity)dense_21/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Є
NoOpNoOp!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall!^dense_20/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall ^lstm_21/StatefulPartitionedCall ^lstm_22/StatefulPartitionedCall ^lstm_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:€€€€€€€€€: : : : : : : : : : : : : : : : : 2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2D
 dense_20/StatefulPartitionedCall dense_20/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2B
lstm_21/StatefulPartitionedCalllstm_21/StatefulPartitionedCall2B
lstm_22/StatefulPartitionedCalllstm_22/StatefulPartitionedCall2B
lstm_23/StatefulPartitionedCalllstm_23/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_283561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
О
з
&sequential_7_lstm_23_while_cond_281565F
Bsequential_7_lstm_23_while_sequential_7_lstm_23_while_loop_counterL
Hsequential_7_lstm_23_while_sequential_7_lstm_23_while_maximum_iterations*
&sequential_7_lstm_23_while_placeholder,
(sequential_7_lstm_23_while_placeholder_1,
(sequential_7_lstm_23_while_placeholder_2,
(sequential_7_lstm_23_while_placeholder_3H
Dsequential_7_lstm_23_while_less_sequential_7_lstm_23_strided_slice_1^
Zsequential_7_lstm_23_while_sequential_7_lstm_23_while_cond_281565___redundant_placeholder0^
Zsequential_7_lstm_23_while_sequential_7_lstm_23_while_cond_281565___redundant_placeholder1^
Zsequential_7_lstm_23_while_sequential_7_lstm_23_while_cond_281565___redundant_placeholder2^
Zsequential_7_lstm_23_while_sequential_7_lstm_23_while_cond_281565___redundant_placeholder3'
#sequential_7_lstm_23_while_identity
ґ
sequential_7/lstm_23/while/LessLess&sequential_7_lstm_23_while_placeholderDsequential_7_lstm_23_while_less_sequential_7_lstm_23_strided_slice_1*
T0*
_output_shapes
: u
#sequential_7/lstm_23/while/IdentityIdentity#sequential_7/lstm_23/while/Less:z:0*
T0
*
_output_shapes
: "S
#sequential_7_lstm_23_while_identity,sequential_7/lstm_23/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::_ [

_output_shapes
: 
A
_user_specified_name)'sequential_7/lstm_23/while/loop_counter:ea

_output_shapes
: 
G
_user_specified_name/-sequential_7/lstm_23/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ч	
√
while_cond_282460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_282460___redundant_placeholder04
0while_while_cond_282460___redundant_placeholder14
0while_while_cond_282460___redundant_placeholder24
0while_while_cond_282460___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ъ

e
F__inference_dropout_37_layer_call_and_return_conditional_losses_287435

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё$
Ё
while_body_282461
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_23_282485_0:@-
while_lstm_cell_23_282487_0:@)
while_lstm_cell_23_282489_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_23_282485:@+
while_lstm_cell_23_282487:@'
while_lstm_cell_23_282489:@ИҐ*while/lstm_cell_23/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0≥
*while/lstm_cell_23/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_23_282485_0while_lstm_cell_23_282487_0while_lstm_cell_23_282489_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_282446r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Д
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_23/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Р
while/Identity_4Identity3while/lstm_cell_23/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
while/Identity_5Identity3while/lstm_cell_23/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y

while/NoOpNoOp+^while/lstm_cell_23/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_23_282485while_lstm_cell_23_282485_0"8
while_lstm_cell_23_282487while_lstm_cell_23_282487_0"8
while_lstm_cell_23_282489while_lstm_cell_23_282489_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2X
*while/lstm_cell_23/StatefulPartitionedCall*while/lstm_cell_23/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ь
≤
(__inference_lstm_22_layer_call_fn_286049

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283645s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ь
≤
(__inference_lstm_22_layer_call_fn_286038

inputs
unknown:@
	unknown_0:@
	unknown_1:@
identityИҐStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_22_layer_call_and_return_conditional_losses_283046s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µJ
Ш
C__inference_lstm_21_layer_call_and_return_conditional_losses_283489

inputs=
+lstm_cell_21_matmul_readvariableop_resource:@?
-lstm_cell_21_matmul_1_readvariableop_resource:@:
,lstm_cell_21_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_21/BiasAdd/ReadVariableOpҐ"lstm_cell_21/MatMul/ReadVariableOpҐ$lstm_cell_21/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_21/MatMul/ReadVariableOpReadVariableOp+lstm_cell_21_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0*lstm_cell_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_21/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_21_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_21/MatMul_1MatMulzeros:output:0,lstm_cell_21/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_21/addAddV2lstm_cell_21/MatMul:product:0lstm_cell_21/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_21/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_21/BiasAddBiasAddlstm_cell_21/add:z:0+lstm_cell_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0lstm_cell_21/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_21/SigmoidSigmoidlstm_cell_21/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_21/mulMullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_21/ReluRelulstm_cell_21/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_21/mul_1Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_21/add_1AddV2lstm_cell_21/mul:z:0lstm_cell_21/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_21/Relu_1Relulstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_21/mul_2Mullstm_cell_21/Sigmoid_2:y:0!lstm_cell_21/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_21_matmul_readvariableop_resource-lstm_cell_21_matmul_1_readvariableop_resource,lstm_cell_21_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_283405*
condR
while_cond_283404*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_21/BiasAdd/ReadVariableOp#^lstm_cell_21/MatMul/ReadVariableOp%^lstm_cell_21/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_21/BiasAdd/ReadVariableOp#lstm_cell_21/BiasAdd/ReadVariableOp2H
"lstm_cell_21/MatMul/ReadVariableOp"lstm_cell_21/MatMul/ReadVariableOp2L
$lstm_cell_21/MatMul_1/ReadVariableOp$lstm_cell_21/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µJ
Ш
C__inference_lstm_22_layer_call_and_return_conditional_losses_286621

inputs=
+lstm_cell_22_matmul_readvariableop_resource:@?
-lstm_cell_22_matmul_1_readvariableop_resource:@:
,lstm_cell_22_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_22/BiasAdd/ReadVariableOpҐ"lstm_cell_22/MatMul/ReadVariableOpҐ$lstm_cell_22/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_22/MatMul/ReadVariableOpReadVariableOp+lstm_cell_22_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_22/MatMulMatMulstrided_slice_2:output:0*lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_22_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_22/MatMul_1MatMulzeros:output:0,lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_22/addAddV2lstm_cell_22/MatMul:product:0lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_22/BiasAddBiasAddlstm_cell_22/add:z:0+lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_22/splitSplit%lstm_cell_22/split/split_dim:output:0lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_22/SigmoidSigmoidlstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_1Sigmoidlstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_22/mulMullstm_cell_22/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_22/ReluRelulstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_22/mul_1Mullstm_cell_22/Sigmoid:y:0lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_22/add_1AddV2lstm_cell_22/mul:z:0lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_22/Sigmoid_2Sigmoidlstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_22/Relu_1Relulstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_22/mul_2Mullstm_cell_22/Sigmoid_2:y:0!lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_22_matmul_readvariableop_resource-lstm_cell_22_matmul_1_readvariableop_resource,lstm_cell_22_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_286537*
condR
while_cond_286536*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¬
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_22/BiasAdd/ReadVariableOp#^lstm_cell_22/MatMul/ReadVariableOp%^lstm_cell_22/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_22/BiasAdd/ReadVariableOp#lstm_cell_22/BiasAdd/ReadVariableOp2H
"lstm_cell_22/MatMul/ReadVariableOp"lstm_cell_22/MatMul/ReadVariableOp2L
$lstm_cell_22/MatMul_1/ReadVariableOp$lstm_cell_22/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
їK
Ш
C__inference_lstm_23_layer_call_and_return_conditional_losses_283212

inputs=
+lstm_cell_23_matmul_readvariableop_resource:@?
-lstm_cell_23_matmul_1_readvariableop_resource:@:
,lstm_cell_23_biasadd_readvariableop_resource:@
identityИҐ#lstm_cell_23/BiasAdd/ReadVariableOpҐ"lstm_cell_23/MatMul/ReadVariableOpҐ$lstm_cell_23/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskО
"lstm_cell_23/MatMul/ReadVariableOpReadVariableOp+lstm_cell_23_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0Х
lstm_cell_23/MatMulMatMulstrided_slice_2:output:0*lstm_cell_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Т
$lstm_cell_23/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_23_matmul_1_readvariableop_resource*
_output_shapes

:@*
dtype0П
lstm_cell_23/MatMul_1MatMulzeros:output:0,lstm_cell_23/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Л
lstm_cell_23/addAddV2lstm_cell_23/MatMul:product:0lstm_cell_23/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@М
#lstm_cell_23/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ф
lstm_cell_23/BiasAddBiasAddlstm_cell_23/add:z:0+lstm_cell_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@^
lstm_cell_23/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ё
lstm_cell_23/splitSplit%lstm_cell_23/split/split_dim:output:0lstm_cell_23/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitn
lstm_cell_23/SigmoidSigmoidlstm_cell_23/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_1Sigmoidlstm_cell_23/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€w
lstm_cell_23/mulMullstm_cell_23/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
lstm_cell_23/ReluRelulstm_cell_23/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ж
lstm_cell_23/mul_1Mullstm_cell_23/Sigmoid:y:0lstm_cell_23/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€{
lstm_cell_23/add_1AddV2lstm_cell_23/mul:z:0lstm_cell_23/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
lstm_cell_23/Sigmoid_2Sigmoidlstm_cell_23/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€e
lstm_cell_23/Relu_1Relulstm_cell_23/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
lstm_cell_23/mul_2Mullstm_cell_23/Sigmoid_2:y:0!lstm_cell_23/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : В
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_23_matmul_readvariableop_resource-lstm_cell_23_matmul_1_readvariableop_resource,lstm_cell_23_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_283127*
condR
while_cond_283126*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ј
NoOpNoOp$^lstm_cell_23/BiasAdd/ReadVariableOp#^lstm_cell_23/MatMul/ReadVariableOp%^lstm_cell_23/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€: : : 2J
#lstm_cell_23/BiasAdd/ReadVariableOp#lstm_cell_23/BiasAdd/ReadVariableOp2H
"lstm_cell_23/MatMul/ReadVariableOp"lstm_cell_23/MatMul/ReadVariableOp2L
$lstm_cell_23/MatMul_1/ReadVariableOp$lstm_cell_23/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
у
d
+__inference_dropout_36_layer_call_fn_287371

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_36_layer_call_and_return_conditional_losses_283294o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ы

х
D__inference_dense_19_layer_call_and_return_conditional_losses_287366

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ы

х
D__inference_dense_18_layer_call_and_return_conditional_losses_283245

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ы

х
D__inference_dense_19_layer_call_and_return_conditional_losses_283276

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ў
d
F__inference_dropout_34_layer_call_and_return_conditional_losses_287299

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ъ

e
F__inference_dropout_34_layer_call_and_return_conditional_losses_287294

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕМ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=¶
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    У
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
б8
 
while_body_286108
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
3while_lstm_cell_22_matmul_readvariableop_resource_0:@G
5while_lstm_cell_22_matmul_1_readvariableop_resource_0:@B
4while_lstm_cell_22_biasadd_readvariableop_resource_0:@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
1while_lstm_cell_22_matmul_readvariableop_resource:@E
3while_lstm_cell_22_matmul_1_readvariableop_resource:@@
2while_lstm_cell_22_biasadd_readvariableop_resource:@ИҐ)while/lstm_cell_22/BiasAdd/ReadVariableOpҐ(while/lstm_cell_22/MatMul/ReadVariableOpҐ*while/lstm_cell_22/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€*
element_dtype0Ь
(while/lstm_cell_22/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_22_matmul_readvariableop_resource_0*
_output_shapes

:@*
dtype0є
while/lstm_cell_22/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@†
*while/lstm_cell_22/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_22_matmul_1_readvariableop_resource_0*
_output_shapes

:@*
dtype0†
while/lstm_cell_22/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_22/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@Э
while/lstm_cell_22/addAddV2#while/lstm_cell_22/MatMul:product:0%while/lstm_cell_22/MatMul_1:product:0*
T0*'
_output_shapes
:€€€€€€€€€@Ъ
)while/lstm_cell_22/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_22_biasadd_readvariableop_resource_0*
_output_shapes
:@*
dtype0¶
while/lstm_cell_22/BiasAddBiasAddwhile/lstm_cell_22/add:z:01while/lstm_cell_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@d
"while/lstm_cell_22/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :п
while/lstm_cell_22/splitSplit+while/lstm_cell_22/split/split_dim:output:0#while/lstm_cell_22/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*
	num_splitz
while/lstm_cell_22/SigmoidSigmoid!while/lstm_cell_22/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_1Sigmoid!while/lstm_cell_22/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€Ж
while/lstm_cell_22/mulMul while/lstm_cell_22/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€t
while/lstm_cell_22/ReluRelu!while/lstm_cell_22/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€Ш
while/lstm_cell_22/mul_1Mulwhile/lstm_cell_22/Sigmoid:y:0%while/lstm_cell_22/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€Н
while/lstm_cell_22/add_1AddV2while/lstm_cell_22/mul:z:0while/lstm_cell_22/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€|
while/lstm_cell_22/Sigmoid_2Sigmoid!while/lstm_cell_22/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€q
while/lstm_cell_22/Relu_1Reluwhile/lstm_cell_22/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
while/lstm_cell_22/mul_2Mul while/lstm_cell_22/Sigmoid_2:y:0'while/lstm_cell_22/Relu_1:activations:0*
T0*'
_output_shapes
:€€€€€€€€€≈
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_22/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: y
while/Identity_4Identitywhile/lstm_cell_22/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€y
while/Identity_5Identitywhile/lstm_cell_22/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€–

while/NoOpNoOp*^while/lstm_cell_22/BiasAdd/ReadVariableOp)^while/lstm_cell_22/MatMul/ReadVariableOp+^while/lstm_cell_22/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_22_biasadd_readvariableop_resource4while_lstm_cell_22_biasadd_readvariableop_resource_0"l
3while_lstm_cell_22_matmul_1_readvariableop_resource5while_lstm_cell_22_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_22_matmul_readvariableop_resource3while_lstm_cell_22_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : 2V
)while/lstm_cell_22/BiasAdd/ReadVariableOp)while/lstm_cell_22/BiasAdd/ReadVariableOp2T
(while/lstm_cell_22/MatMul/ReadVariableOp(while/lstm_cell_22/MatMul/ReadVariableOp2X
*while/lstm_cell_22/MatMul_1/ReadVariableOp*while/lstm_cell_22/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
: 
ґ

e
F__inference_dropout_32_layer_call_and_return_conditional_losses_282902

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕР
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=™
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ч
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€e
IdentityIdentitydropout/SelectV2:output:0*
T0*+
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ч	
√
while_cond_285607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_285607___redundant_placeholder04
0while_while_cond_285607___redundant_placeholder14
0while_while_cond_285607___redundant_placeholder24
0while_while_cond_285607___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€:€€€€€€€€€: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:€€€€€€€€€:-)
'
_output_shapes
:€€€€€€€€€:

_output_shapes
: :

_output_shapes
:
Ђ8
В
C__inference_lstm_22_layer_call_and_return_conditional_losses_282324

inputs%
lstm_cell_22_282242:@%
lstm_cell_22_282244:@!
lstm_cell_22_282246:@
identityИҐ$lstm_cell_22/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maskх
$lstm_cell_22/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_22_282242lstm_cell_22_282244lstm_cell_22_282246*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_282241n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Є
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ј
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_22_282242lstm_cell_22_282244lstm_cell_22_282246*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_282255*
condR
while_cond_282254*K
output_shapes:
8: : : : :€€€€€€€€€:€€€€€€€€€: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ћ
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Я
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€u
NoOpNoOp%^lstm_cell_22/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€: : : 2L
$lstm_cell_22/StatefulPartitionedCall$lstm_cell_22/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
й
d
F__inference_dropout_32_layer_call_and_return_conditional_losses_286005

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:€€€€€€€€€_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"у
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ї
serving_defaultІ
K
lstm_21_input:
serving_default_lstm_21_input:0€€€€€€€€€<
dense_210
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:»С
»
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer_with_weights-6
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
Љ
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator"
_tf_keras_layer
Џ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-_random_generator
.cell
/
state_spec"
_tf_keras_rnn_layer
Љ
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6_random_generator"
_tf_keras_layer
Џ
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;__call__
*<&call_and_return_all_conditional_losses
=_random_generator
>cell
?
state_spec"
_tf_keras_rnn_layer
Љ
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses
F_random_generator"
_tf_keras_layer
ї
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

Mkernel
Nbias"
_tf_keras_layer
Љ
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
U_random_generator"
_tf_keras_layer
ї
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias"
_tf_keras_layer
Љ
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses
d_random_generator"
_tf_keras_layer
ї
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias"
_tf_keras_layer
Љ
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses
s_random_generator"
_tf_keras_layer
ї
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer
£
|0
}1
~2
3
А4
Б5
В6
Г7
Д8
M9
N10
\11
]12
k13
l14
z15
{16"
trackable_list_wrapper
£
|0
}1
~2
3
А4
Б5
В6
Г7
Д8
M9
N10
\11
]12
k13
l14
z15
{16"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
з
Кtrace_0
Лtrace_1
Мtrace_2
Нtrace_32ф
-__inference_sequential_7_layer_call_fn_283947
-__inference_sequential_7_layer_call_fn_284037
-__inference_sequential_7_layer_call_fn_284369
-__inference_sequential_7_layer_call_fn_284408µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0zЛtrace_1zМtrace_2zНtrace_3
”
Оtrace_0
Пtrace_1
Рtrace_2
Сtrace_32а
H__inference_sequential_7_layer_call_and_return_conditional_losses_283344
H__inference_sequential_7_layer_call_and_return_conditional_losses_283856
H__inference_sequential_7_layer_call_and_return_conditional_losses_284906
H__inference_sequential_7_layer_call_and_return_conditional_losses_285362µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0zПtrace_1zРtrace_2zСtrace_3
“Bѕ
!__inference__wrapped_model_281682lstm_21_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
Т
_variables
У_iterations
Ф_learning_rate
Х_index_dict
Ц
_momentums
Ч_velocities
Ш_update_step_xla"
experimentalOptimizer
-
Щserving_default"
signature_map
5
|0
}1
~2"
trackable_list_wrapper
5
|0
}1
~2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
Ъstates
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
и
†trace_0
°trace_1
Ґtrace_2
£trace_32х
(__inference_lstm_21_layer_call_fn_285373
(__inference_lstm_21_layer_call_fn_285384
(__inference_lstm_21_layer_call_fn_285395
(__inference_lstm_21_layer_call_fn_285406 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0z°trace_1zҐtrace_2z£trace_3
‘
§trace_0
•trace_1
¶trace_2
Іtrace_32б
C__inference_lstm_21_layer_call_and_return_conditional_losses_285549
C__inference_lstm_21_layer_call_and_return_conditional_losses_285692
C__inference_lstm_21_layer_call_and_return_conditional_losses_285835
C__inference_lstm_21_layer_call_and_return_conditional_losses_285978 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0z•trace_1z¶trace_2zІtrace_3
"
_generic_user_object
А
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses
Ѓ_random_generator
ѓ
state_size

|kernel
}recurrent_kernel
~bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∞non_trainable_variables
±layers
≤metrics
 ≥layer_regularization_losses
іlayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ѕ
µtrace_0
ґtrace_12Ж
+__inference_dropout_32_layer_call_fn_285983
+__inference_dropout_32_layer_call_fn_285988©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0zґtrace_1
ч
Јtrace_0
Єtrace_12Љ
F__inference_dropout_32_layer_call_and_return_conditional_losses_286000
F__inference_dropout_32_layer_call_and_return_conditional_losses_286005©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0zЄtrace_1
"
_generic_user_object
7
0
А1
Б2"
trackable_list_wrapper
7
0
А1
Б2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
єstates
Їnon_trainable_variables
їlayers
Љmetrics
 љlayer_regularization_losses
Њlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
и
њtrace_0
јtrace_1
Ѕtrace_2
¬trace_32х
(__inference_lstm_22_layer_call_fn_286016
(__inference_lstm_22_layer_call_fn_286027
(__inference_lstm_22_layer_call_fn_286038
(__inference_lstm_22_layer_call_fn_286049 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zњtrace_0zјtrace_1zЅtrace_2z¬trace_3
‘
√trace_0
ƒtrace_1
≈trace_2
∆trace_32б
C__inference_lstm_22_layer_call_and_return_conditional_losses_286192
C__inference_lstm_22_layer_call_and_return_conditional_losses_286335
C__inference_lstm_22_layer_call_and_return_conditional_losses_286478
C__inference_lstm_22_layer_call_and_return_conditional_losses_286621 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z√trace_0zƒtrace_1z≈trace_2z∆trace_3
"
_generic_user_object
В
«	variables
»trainable_variables
…regularization_losses
 	keras_api
Ћ__call__
+ћ&call_and_return_all_conditional_losses
Ќ_random_generator
ќ
state_size

kernel
Аrecurrent_kernel
	Бbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Ѕ
‘trace_0
’trace_12Ж
+__inference_dropout_33_layer_call_fn_286626
+__inference_dropout_33_layer_call_fn_286631©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0z’trace_1
ч
÷trace_0
„trace_12Љ
F__inference_dropout_33_layer_call_and_return_conditional_losses_286643
F__inference_dropout_33_layer_call_and_return_conditional_losses_286648©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z÷trace_0z„trace_1
"
_generic_user_object
8
В0
Г1
Д2"
trackable_list_wrapper
8
В0
Г1
Д2"
trackable_list_wrapper
 "
trackable_list_wrapper
њ
Ўstates
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
7	variables
8trainable_variables
9regularization_losses
;__call__
*<&call_and_return_all_conditional_losses
&<"call_and_return_conditional_losses"
_generic_user_object
и
ёtrace_0
яtrace_1
аtrace_2
бtrace_32х
(__inference_lstm_23_layer_call_fn_286659
(__inference_lstm_23_layer_call_fn_286670
(__inference_lstm_23_layer_call_fn_286681
(__inference_lstm_23_layer_call_fn_286692 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zёtrace_0zяtrace_1zаtrace_2zбtrace_3
‘
вtrace_0
гtrace_1
дtrace_2
еtrace_32б
C__inference_lstm_23_layer_call_and_return_conditional_losses_286837
C__inference_lstm_23_layer_call_and_return_conditional_losses_286982
C__inference_lstm_23_layer_call_and_return_conditional_losses_287127
C__inference_lstm_23_layer_call_and_return_conditional_losses_287272 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0zгtrace_1zдtrace_2zеtrace_3
"
_generic_user_object
Г
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator
н
state_size
Вkernel
Гrecurrent_kernel
	Дbias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
оnon_trainable_variables
пlayers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
Ѕ
уtrace_0
фtrace_12Ж
+__inference_dropout_34_layer_call_fn_287277
+__inference_dropout_34_layer_call_fn_287282©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0zфtrace_1
ч
хtrace_0
цtrace_12Љ
F__inference_dropout_34_layer_call_and_return_conditional_losses_287294
F__inference_dropout_34_layer_call_and_return_conditional_losses_287299©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0zцtrace_1
"
_generic_user_object
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
е
ьtrace_02∆
)__inference_dense_18_layer_call_fn_287308Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zьtrace_0
А
эtrace_02б
D__inference_dense_18_layer_call_and_return_conditional_losses_287319Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0
!:2dense_18/kernel
:2dense_18/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
Ѕ
Гtrace_0
Дtrace_12Ж
+__inference_dropout_35_layer_call_fn_287324
+__inference_dropout_35_layer_call_fn_287329©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0zДtrace_1
ч
Еtrace_0
Жtrace_12Љ
F__inference_dropout_35_layer_call_and_return_conditional_losses_287341
F__inference_dropout_35_layer_call_and_return_conditional_losses_287346©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0zЖtrace_1
"
_generic_user_object
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
е
Мtrace_02∆
)__inference_dense_19_layer_call_fn_287355Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zМtrace_0
А
Нtrace_02б
D__inference_dense_19_layer_call_and_return_conditional_losses_287366Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
!:2dense_19/kernel
:2dense_19/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
Ѕ
Уtrace_0
Фtrace_12Ж
+__inference_dropout_36_layer_call_fn_287371
+__inference_dropout_36_layer_call_fn_287376©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zУtrace_0zФtrace_1
ч
Хtrace_0
Цtrace_12Љ
F__inference_dropout_36_layer_call_and_return_conditional_losses_287388
F__inference_dropout_36_layer_call_and_return_conditional_losses_287393©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0zЦtrace_1
"
_generic_user_object
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
е
Ьtrace_02∆
)__inference_dense_20_layer_call_fn_287402Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЬtrace_0
А
Эtrace_02б
D__inference_dense_20_layer_call_and_return_conditional_losses_287413Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
!:2dense_20/kernel
:2dense_20/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
Ѕ
£trace_0
§trace_12Ж
+__inference_dropout_37_layer_call_fn_287418
+__inference_dropout_37_layer_call_fn_287423©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0z§trace_1
ч
•trace_0
¶trace_12Љ
F__inference_dropout_37_layer_call_and_return_conditional_losses_287435
F__inference_dropout_37_layer_call_and_return_conditional_losses_287440©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z•trace_0z¶trace_1
"
_generic_user_object
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
е
ђtrace_02∆
)__inference_dense_21_layer_call_fn_287449Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zђtrace_0
А
≠trace_02б
D__inference_dense_21_layer_call_and_return_conditional_losses_287459Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0
!:2dense_21/kernel
:2dense_21/bias
-:+@2lstm_21/lstm_cell_21/kernel
7:5@2%lstm_21/lstm_cell_21/recurrent_kernel
':%@2lstm_21/lstm_cell_21/bias
-:+@2lstm_22/lstm_cell_22/kernel
7:5@2%lstm_22/lstm_cell_22/recurrent_kernel
':%@2lstm_22/lstm_cell_22/bias
-:+@2lstm_23/lstm_cell_23/kernel
7:5@2%lstm_23/lstm_cell_23/recurrent_kernel
':%@2lstm_23/lstm_cell_23/bias
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
Ѓ0
ѓ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
-__inference_sequential_7_layer_call_fn_283947lstm_21_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
-__inference_sequential_7_layer_call_fn_284037lstm_21_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
-__inference_sequential_7_layer_call_fn_284369inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
-__inference_sequential_7_layer_call_fn_284408inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
H__inference_sequential_7_layer_call_and_return_conditional_losses_283344lstm_21_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
H__inference_sequential_7_layer_call_and_return_conditional_losses_283856lstm_21_input"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_7_layer_call_and_return_conditional_losses_284906inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ПBМ
H__inference_sequential_7_layer_call_and_return_conditional_losses_285362inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—
У0
∞1
±2
≤3
≥4
і5
µ6
ґ7
Ј8
Є9
є10
Ї11
ї12
Љ13
љ14
Њ15
њ16
ј17
Ѕ18
¬19
√20
ƒ21
≈22
∆23
«24
»25
…26
 27
Ћ28
ћ29
Ќ30
ќ31
ѕ32
–33
—34"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ѓ
∞0
≤1
і2
ґ3
Є4
Ї5
Љ6
Њ7
ј8
¬9
ƒ10
∆11
»12
 13
ћ14
ќ15
–16"
trackable_list_wrapper
ѓ
±0
≥1
µ2
Ј3
є4
ї5
љ6
њ7
Ѕ8
√9
≈10
«11
…12
Ћ13
Ќ14
ѕ15
—16"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
—Bќ
$__inference_signature_wrapper_284330lstm_21_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_21_layer_call_fn_285373inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
(__inference_lstm_21_layer_call_fn_285384inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_21_layer_call_fn_285395inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_21_layer_call_fn_285406inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285549inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285692inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285835inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285978inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
|0
}1
~2"
trackable_list_wrapper
5
|0
}1
~2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
ѕ
„trace_0
Ўtrace_12Ф
-__inference_lstm_cell_21_layer_call_fn_287476
-__inference_lstm_cell_21_layer_call_fn_287493≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z„trace_0zЎtrace_1
Е
ўtrace_0
Џtrace_12 
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287525
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287557≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0zЏtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_32_layer_call_fn_285983inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_32_layer_call_fn_285988inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_32_layer_call_and_return_conditional_losses_286000inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_32_layer_call_and_return_conditional_losses_286005inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
.0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_22_layer_call_fn_286016inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
(__inference_lstm_22_layer_call_fn_286027inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_22_layer_call_fn_286038inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_22_layer_call_fn_286049inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286192inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286335inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286478inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286621inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
7
0
А1
Б2"
trackable_list_wrapper
7
0
А1
Б2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
«	variables
»trainable_variables
…regularization_losses
Ћ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
ѕ
аtrace_0
бtrace_12Ф
-__inference_lstm_cell_22_layer_call_fn_287574
-__inference_lstm_cell_22_layer_call_fn_287591≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0zбtrace_1
Е
вtrace_0
гtrace_12 
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287623
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287655≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0zгtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_33_layer_call_fn_286626inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_33_layer_call_fn_286631inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_33_layer_call_and_return_conditional_losses_286643inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_33_layer_call_and_return_conditional_losses_286648inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
>0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_23_layer_call_fn_286659inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
(__inference_lstm_23_layer_call_fn_286670inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_23_layer_call_fn_286681inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
(__inference_lstm_23_layer_call_fn_286692inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286837inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286982inputs_0" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_23_layer_call_and_return_conditional_losses_287127inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
C__inference_lstm_23_layer_call_and_return_conditional_losses_287272inputs" 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
8
В0
Г1
Д2"
trackable_list_wrapper
8
В0
Г1
Д2"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
ѕ
йtrace_0
кtrace_12Ф
-__inference_lstm_cell_23_layer_call_fn_287672
-__inference_lstm_cell_23_layer_call_fn_287689≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zйtrace_0zкtrace_1
Е
лtrace_0
мtrace_12 
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287721
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287753≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0zмtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_34_layer_call_fn_287277inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_34_layer_call_fn_287282inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_34_layer_call_and_return_conditional_losses_287294inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_34_layer_call_and_return_conditional_losses_287299inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_18_layer_call_fn_287308inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_18_layer_call_and_return_conditional_losses_287319inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_35_layer_call_fn_287324inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_35_layer_call_fn_287329inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_35_layer_call_and_return_conditional_losses_287341inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_35_layer_call_and_return_conditional_losses_287346inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_19_layer_call_fn_287355inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_19_layer_call_and_return_conditional_losses_287366inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_36_layer_call_fn_287371inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_36_layer_call_fn_287376inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_36_layer_call_and_return_conditional_losses_287388inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_36_layer_call_and_return_conditional_losses_287393inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_20_layer_call_fn_287402inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_20_layer_call_and_return_conditional_losses_287413inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
жBг
+__inference_dropout_37_layer_call_fn_287418inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
жBг
+__inference_dropout_37_layer_call_fn_287423inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_37_layer_call_and_return_conditional_losses_287435inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
БBю
F__inference_dropout_37_layer_call_and_return_conditional_losses_287440inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_dense_21_layer_call_fn_287449inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_dense_21_layer_call_and_return_conditional_losses_287459inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
н	variables
о	keras_api

пtotal

рcount"
_tf_keras_metric
c
с	variables
т	keras_api

уtotal

фcount
х
_fn_kwargs"
_tf_keras_metric
2:0@2"Adam/m/lstm_21/lstm_cell_21/kernel
2:0@2"Adam/v/lstm_21/lstm_cell_21/kernel
<::@2,Adam/m/lstm_21/lstm_cell_21/recurrent_kernel
<::@2,Adam/v/lstm_21/lstm_cell_21/recurrent_kernel
,:*@2 Adam/m/lstm_21/lstm_cell_21/bias
,:*@2 Adam/v/lstm_21/lstm_cell_21/bias
2:0@2"Adam/m/lstm_22/lstm_cell_22/kernel
2:0@2"Adam/v/lstm_22/lstm_cell_22/kernel
<::@2,Adam/m/lstm_22/lstm_cell_22/recurrent_kernel
<::@2,Adam/v/lstm_22/lstm_cell_22/recurrent_kernel
,:*@2 Adam/m/lstm_22/lstm_cell_22/bias
,:*@2 Adam/v/lstm_22/lstm_cell_22/bias
2:0@2"Adam/m/lstm_23/lstm_cell_23/kernel
2:0@2"Adam/v/lstm_23/lstm_cell_23/kernel
<::@2,Adam/m/lstm_23/lstm_cell_23/recurrent_kernel
<::@2,Adam/v/lstm_23/lstm_cell_23/recurrent_kernel
,:*@2 Adam/m/lstm_23/lstm_cell_23/bias
,:*@2 Adam/v/lstm_23/lstm_cell_23/bias
&:$2Adam/m/dense_18/kernel
&:$2Adam/v/dense_18/kernel
 :2Adam/m/dense_18/bias
 :2Adam/v/dense_18/bias
&:$2Adam/m/dense_19/kernel
&:$2Adam/v/dense_19/kernel
 :2Adam/m/dense_19/bias
 :2Adam/v/dense_19/bias
&:$2Adam/m/dense_20/kernel
&:$2Adam/v/dense_20/kernel
 :2Adam/m/dense_20/bias
 :2Adam/v/dense_20/bias
&:$2Adam/m/dense_21/kernel
&:$2Adam/v/dense_21/kernel
 :2Adam/m/dense_21/bias
 :2Adam/v/dense_21/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
-__inference_lstm_cell_21_layer_call_fn_287476inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
-__inference_lstm_cell_21_layer_call_fn_287493inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287525inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287557inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
-__inference_lstm_cell_22_layer_call_fn_287574inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
-__inference_lstm_cell_22_layer_call_fn_287591inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287623inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287655inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
-__inference_lstm_cell_23_layer_call_fn_287672inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЖBГ
-__inference_lstm_cell_23_layer_call_fn_287689inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287721inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
°BЮ
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287753inputsstates_0states_1"≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
п0
р1"
trackable_list_wrapper
.
н	variables"
_generic_user_object
:  (2total
:  (2count
0
у0
ф1"
trackable_list_wrapper
.
с	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperѓ
!__inference__wrapped_model_281682Й|}~АБВГДMN\]klz{:Ґ7
0Ґ-
+К(
lstm_21_input€€€€€€€€€
™ "3™0
.
dense_21"К
dense_21€€€€€€€€€Ђ
D__inference_dense_18_layer_call_and_return_conditional_losses_287319cMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_18_layer_call_fn_287308XMN/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_dense_19_layer_call_and_return_conditional_losses_287366c\]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_19_layer_call_fn_287355X\]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_dense_20_layer_call_and_return_conditional_losses_287413ckl/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_20_layer_call_fn_287402Xkl/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€Ђ
D__inference_dense_21_layer_call_and_return_conditional_losses_287459cz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
)__inference_dense_21_layer_call_fn_287449Xz{/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€µ
F__inference_dropout_32_layer_call_and_return_conditional_losses_286000k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ µ
F__inference_dropout_32_layer_call_and_return_conditional_losses_286005k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_dropout_32_layer_call_fn_285983`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "%К"
unknown€€€€€€€€€П
+__inference_dropout_32_layer_call_fn_285988`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "%К"
unknown€€€€€€€€€µ
F__inference_dropout_33_layer_call_and_return_conditional_losses_286643k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ µ
F__inference_dropout_33_layer_call_and_return_conditional_losses_286648k7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ П
+__inference_dropout_33_layer_call_fn_286626`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p
™ "%К"
unknown€€€€€€€€€П
+__inference_dropout_33_layer_call_fn_286631`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€
p 
™ "%К"
unknown€€€€€€€€€≠
F__inference_dropout_34_layer_call_and_return_conditional_losses_287294c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≠
F__inference_dropout_34_layer_call_and_return_conditional_losses_287299c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dropout_34_layer_call_fn_287277X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€З
+__inference_dropout_34_layer_call_fn_287282X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€≠
F__inference_dropout_35_layer_call_and_return_conditional_losses_287341c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≠
F__inference_dropout_35_layer_call_and_return_conditional_losses_287346c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dropout_35_layer_call_fn_287324X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€З
+__inference_dropout_35_layer_call_fn_287329X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€≠
F__inference_dropout_36_layer_call_and_return_conditional_losses_287388c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≠
F__inference_dropout_36_layer_call_and_return_conditional_losses_287393c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dropout_36_layer_call_fn_287371X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€З
+__inference_dropout_36_layer_call_fn_287376X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€≠
F__inference_dropout_37_layer_call_and_return_conditional_losses_287435c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≠
F__inference_dropout_37_layer_call_and_return_conditional_losses_287440c3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ З
+__inference_dropout_37_layer_call_fn_287418X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p
™ "!К
unknown€€€€€€€€€З
+__inference_dropout_37_layer_call_fn_287423X3Ґ0
)Ґ&
 К
inputs€€€€€€€€€
p 
™ "!К
unknown€€€€€€€€€ў
C__inference_lstm_21_layer_call_and_return_conditional_losses_285549С|}~OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ ў
C__inference_lstm_21_layer_call_and_return_conditional_losses_285692С|}~OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ њ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285835x|}~?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ њ
C__inference_lstm_21_layer_call_and_return_conditional_losses_285978x|}~?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ ≥
(__inference_lstm_21_layer_call_fn_285373Ж|}~OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€≥
(__inference_lstm_21_layer_call_fn_285384Ж|}~OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Щ
(__inference_lstm_21_layer_call_fn_285395m|}~?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "%К"
unknown€€€€€€€€€Щ
(__inference_lstm_21_layer_call_fn_285406m|}~?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "%К"
unknown€€€€€€€€€џ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286192УАБOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ џ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286335УАБOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "9Ґ6
/К,
tensor_0€€€€€€€€€€€€€€€€€€
Ъ Ѕ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286478zАБ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ Ѕ
C__inference_lstm_22_layer_call_and_return_conditional_losses_286621zАБ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€
Ъ µ
(__inference_lstm_22_layer_call_fn_286016ИАБOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€µ
(__inference_lstm_22_layer_call_fn_286027ИАБOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ".К+
unknown€€€€€€€€€€€€€€€€€€Ы
(__inference_lstm_22_layer_call_fn_286038oАБ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "%К"
unknown€€€€€€€€€Ы
(__inference_lstm_22_layer_call_fn_286049oАБ?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "%К"
unknown€€€€€€€€€ѕ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286837ЗВГДOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ѕ
C__inference_lstm_23_layer_call_and_return_conditional_losses_286982ЗВГДOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Њ
C__inference_lstm_23_layer_call_and_return_conditional_losses_287127wВГД?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Њ
C__inference_lstm_23_layer_call_and_return_conditional_losses_287272wВГД?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ®
(__inference_lstm_23_layer_call_fn_286659|ВГДOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p

 
™ "!К
unknown€€€€€€€€€®
(__inference_lstm_23_layer_call_fn_286670|ВГДOҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€

 
p 

 
™ "!К
unknown€€€€€€€€€Ш
(__inference_lstm_23_layer_call_fn_286681lВГД?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p

 
™ "!К
unknown€€€€€€€€€Ш
(__inference_lstm_23_layer_call_fn_286692lВГД?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€

 
p 

 
™ "!К
unknown€€€€€€€€€б
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287525Ф|}~АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ б
H__inference_lstm_cell_21_layer_call_and_return_conditional_losses_287557Ф|}~АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ і
-__inference_lstm_cell_21_layer_call_fn_287476В|}~АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€і
-__inference_lstm_cell_21_layer_call_fn_287493В|}~АҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€г
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287623ЦАБАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ г
H__inference_lstm_cell_22_layer_call_and_return_conditional_losses_287655ЦАБАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ ґ
-__inference_lstm_cell_22_layer_call_fn_287574ДАБАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€ґ
-__inference_lstm_cell_22_layer_call_fn_287591ДАБАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€д
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287721ЧВГДАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ д
H__inference_lstm_cell_23_layer_call_and_return_conditional_losses_287753ЧВГДАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€
SЪP
&К#
tensor_0_1_0€€€€€€€€€
&К#
tensor_0_1_1€€€€€€€€€
Ъ Ј
-__inference_lstm_cell_23_layer_call_fn_287672ЕВГДАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€Ј
-__inference_lstm_cell_23_layer_call_fn_287689ЕВГДАҐ}
vҐs
 К
inputs€€€€€€€€€
KҐH
"К
states_0€€€€€€€€€
"К
states_1€€€€€€€€€
p 
™ "xҐu
"К
tensor_0€€€€€€€€€
OЪL
$К!

tensor_1_0€€€€€€€€€
$К!

tensor_1_1€€€€€€€€€„
H__inference_sequential_7_layer_call_and_return_conditional_losses_283344К|}~АБВГДMN\]klz{BҐ?
8Ґ5
+К(
lstm_21_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ „
H__inference_sequential_7_layer_call_and_return_conditional_losses_283856К|}~АБВГДMN\]klz{BҐ?
8Ґ5
+К(
lstm_21_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ –
H__inference_sequential_7_layer_call_and_return_conditional_losses_284906Г|}~АБВГДMN\]klz{;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ –
H__inference_sequential_7_layer_call_and_return_conditional_losses_285362Г|}~АБВГДMN\]klz{;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
-__inference_sequential_7_layer_call_fn_283947|}~АБВГДMN\]klz{BҐ?
8Ґ5
+К(
lstm_21_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€∞
-__inference_sequential_7_layer_call_fn_284037|}~АБВГДMN\]klz{BҐ?
8Ґ5
+К(
lstm_21_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€©
-__inference_sequential_7_layer_call_fn_284369x|}~АБВГДMN\]klz{;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€©
-__inference_sequential_7_layer_call_fn_284408x|}~АБВГДMN\]klz{;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€√
$__inference_signature_wrapper_284330Ъ|}~АБВГДMN\]klz{KҐH
Ґ 
A™>
<
lstm_21_input+К(
lstm_21_input€€€€€€€€€"3™0
.
dense_21"К
dense_21€€€€€€€€€