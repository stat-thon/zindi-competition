ФН
В╝
D
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Џ
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ѓ
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(ѕ
?
Mul
x"T
y"T
z"T"
Ttype:
2	љ
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
dtypetypeѕ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Й
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
executor_typestring ѕ
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718▄В	
ё
conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
: *
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
: *
dtype0
ё
conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0
Ё
conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*!
shared_nameconv2d_17/kernel
~
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*'
_output_shapes
:@ђ*
dtype0
u
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_17/bias
n
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes	
:ђ*
dtype0
є
conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv2d_18/kernel

$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*(
_output_shapes
:ђђ*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:ђ*
dtype0
є
conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*!
shared_nameconv2d_19/kernel

$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*(
_output_shapes
:ђђ*
dtype0
u
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*
shared_nameconv2d_19/bias
n
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes	
:ђ*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђb*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	ђb*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
u
true_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nametrue_positives
n
"true_positives/Read/ReadVariableOpReadVariableOptrue_positives*
_output_shapes	
:╚*
dtype0
u
true_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nametrue_negatives
n
"true_negatives/Read/ReadVariableOpReadVariableOptrue_negatives*
_output_shapes	
:╚*
dtype0
w
false_positivesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚* 
shared_namefalse_positives
p
#false_positives/Read/ReadVariableOpReadVariableOpfalse_positives*
_output_shapes	
:╚*
dtype0
w
false_negativesVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚* 
shared_namefalse_negatives
p
#false_negatives/Read/ReadVariableOpReadVariableOpfalse_negatives*
_output_shapes	
:╚*
dtype0
њ
Adam/conv2d_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_15/kernel/m
І
+Adam/conv2d_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/m*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_15/bias/m
{
)Adam/conv2d_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/m*
_output_shapes
: *
dtype0
њ
Adam/conv2d_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_16/kernel/m
І
+Adam/conv2d_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/m*&
_output_shapes
: @*
dtype0
ѓ
Adam/conv2d_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/m
{
)Adam/conv2d_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/m*
_output_shapes
:@*
dtype0
Њ
Adam/conv2d_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*(
shared_nameAdam/conv2d_17/kernel/m
ї
+Adam/conv2d_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/m*'
_output_shapes
:@ђ*
dtype0
Ѓ
Adam/conv2d_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_17/bias/m
|
)Adam/conv2d_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/m*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_18/kernel/m
Ї
+Adam/conv2d_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/m*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_18/bias/m
|
)Adam/conv2d_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/m*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_19/kernel/m
Ї
+Adam/conv2d_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/m*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_19/bias/m
|
)Adam/conv2d_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/m*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђb*&
shared_nameAdam/dense_3/kernel/m
ђ
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	ђb*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
њ
Adam/conv2d_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_15/kernel/v
І
+Adam/conv2d_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/kernel/v*&
_output_shapes
: *
dtype0
ѓ
Adam/conv2d_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_15/bias/v
{
)Adam/conv2d_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_15/bias/v*
_output_shapes
: *
dtype0
њ
Adam/conv2d_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_16/kernel/v
І
+Adam/conv2d_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/kernel/v*&
_output_shapes
: @*
dtype0
ѓ
Adam/conv2d_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_16/bias/v
{
)Adam/conv2d_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_16/bias/v*
_output_shapes
:@*
dtype0
Њ
Adam/conv2d_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ђ*(
shared_nameAdam/conv2d_17/kernel/v
ї
+Adam/conv2d_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/kernel/v*'
_output_shapes
:@ђ*
dtype0
Ѓ
Adam/conv2d_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_17/bias/v
|
)Adam/conv2d_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_17/bias/v*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_18/kernel/v
Ї
+Adam/conv2d_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/kernel/v*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_18/bias/v
|
)Adam/conv2d_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_18/bias/v*
_output_shapes	
:ђ*
dtype0
ћ
Adam/conv2d_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђђ*(
shared_nameAdam/conv2d_19/kernel/v
Ї
+Adam/conv2d_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/kernel/v*(
_output_shapes
:ђђ*
dtype0
Ѓ
Adam/conv2d_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ђ*&
shared_nameAdam/conv2d_19/bias/v
|
)Adam/conv2d_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_19/bias/v*
_output_shapes	
:ђ*
dtype0
Є
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ђb*&
shared_nameAdam/dense_3/kernel/v
ђ
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	ђb*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
┼N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ђN
valueШMBзM BВM
╣
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 

	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
R
%trainable_variables
&	variables
'regularization_losses
(	keras_api
h

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
R
/trainable_variables
0	variables
1regularization_losses
2	keras_api
h

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
R
9trainable_variables
:	variables
;regularization_losses
<	keras_api
h

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
R
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
h

Gkernel
Hbias
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
░
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemџmЏmю mЮ)mъ*mЪ3mа4mА=mб>mБGmцHmЦvдvДvе vЕ)vф*vФ3vг4vГ=v«>v»Gv░Hv▒
V
0
1
2
 3
)4
*5
36
47
=8
>9
G10
H11
V
0
1
2
 3
)4
*5
36
47
=8
>9
G10
H11
 
Г
trainable_variables
	variables

Rlayers
Slayer_metrics
Tmetrics
regularization_losses
Unon_trainable_variables
Vlayer_regularization_losses
 
 
\Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
Г
trainable_variables

Wlayers
	variables
Xlayer_metrics
Ymetrics
regularization_losses
Znon_trainable_variables
[layer_regularization_losses
 
 
 
Г
trainable_variables

\layers
	variables
]layer_metrics
^metrics
regularization_losses
_non_trainable_variables
`layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
Г
!trainable_variables

alayers
"	variables
blayer_metrics
cmetrics
#regularization_losses
dnon_trainable_variables
elayer_regularization_losses
 
 
 
Г
%trainable_variables

flayers
&	variables
glayer_metrics
hmetrics
'regularization_losses
inon_trainable_variables
jlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1

)0
*1
 
Г
+trainable_variables

klayers
,	variables
llayer_metrics
mmetrics
-regularization_losses
nnon_trainable_variables
olayer_regularization_losses
 
 
 
Г
/trainable_variables

players
0	variables
qlayer_metrics
rmetrics
1regularization_losses
snon_trainable_variables
tlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41

30
41
 
Г
5trainable_variables

ulayers
6	variables
vlayer_metrics
wmetrics
7regularization_losses
xnon_trainable_variables
ylayer_regularization_losses
 
 
 
Г
9trainable_variables

zlayers
:	variables
{layer_metrics
|metrics
;regularization_losses
}non_trainable_variables
~layer_regularization_losses
\Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

=0
>1

=0
>1
 
▒
?trainable_variables

layers
@	variables
ђlayer_metrics
Ђmetrics
Aregularization_losses
ѓnon_trainable_variables
 Ѓlayer_regularization_losses
 
 
 
▓
Ctrainable_variables
ёlayers
D	variables
Ёlayer_metrics
єmetrics
Eregularization_losses
Єnon_trainable_variables
 ѕlayer_regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

G0
H1

G0
H1
 
▓
Itrainable_variables
Ѕlayers
J	variables
іlayer_metrics
Іmetrics
Kregularization_losses
їnon_trainable_variables
 Їlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
^
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
12
 

ј0
Ј1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

љtotal

Љcount
њ	variables
Њ	keras_api
v
ћtrue_positives
Ћtrue_negatives
ќfalse_positives
Ќfalse_negatives
ў	variables
Ў	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

љ0
Љ1

њ	variables
a_
VARIABLE_VALUEtrue_positives=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEtrue_negatives=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_positives>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEfalse_negatives>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUE
 
ћ0
Ћ1
ќ2
Ќ3

ў	variables
}
VARIABLE_VALUEAdam/conv2d_15/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_15/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_15/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_16/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_16/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_17/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_17/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_18/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_18/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_19/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_19/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ј
serving_default_input_4Placeholder*1
_output_shapes
:         ┤┤*
dtype0*&
shape:         ┤┤
ћ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *,
f'R%
#__inference_signature_wrapper_17907
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ї
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp"true_positives/Read/ReadVariableOp"true_negatives/Read/ReadVariableOp#false_positives/Read/ReadVariableOp#false_negatives/Read/ReadVariableOp+Adam/conv2d_15/kernel/m/Read/ReadVariableOp)Adam/conv2d_15/bias/m/Read/ReadVariableOp+Adam/conv2d_16/kernel/m/Read/ReadVariableOp)Adam/conv2d_16/bias/m/Read/ReadVariableOp+Adam/conv2d_17/kernel/m/Read/ReadVariableOp)Adam/conv2d_17/bias/m/Read/ReadVariableOp+Adam/conv2d_18/kernel/m/Read/ReadVariableOp)Adam/conv2d_18/bias/m/Read/ReadVariableOp+Adam/conv2d_19/kernel/m/Read/ReadVariableOp)Adam/conv2d_19/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp+Adam/conv2d_15/kernel/v/Read/ReadVariableOp)Adam/conv2d_15/bias/v/Read/ReadVariableOp+Adam/conv2d_16/kernel/v/Read/ReadVariableOp)Adam/conv2d_16/bias/v/Read/ReadVariableOp+Adam/conv2d_17/kernel/v/Read/ReadVariableOp)Adam/conv2d_17/bias/v/Read/ReadVariableOp+Adam/conv2d_18/kernel/v/Read/ReadVariableOp)Adam/conv2d_18/bias/v/Read/ReadVariableOp+Adam/conv2d_19/kernel/v/Read/ReadVariableOp)Adam/conv2d_19/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*<
Tin5
321	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *'
f"R 
__inference__traced_save_18372
▄	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasconv2d_18/kernelconv2d_18/biasconv2d_19/kernelconv2d_19/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttrue_positivestrue_negativesfalse_positivesfalse_negativesAdam/conv2d_15/kernel/mAdam/conv2d_15/bias/mAdam/conv2d_16/kernel/mAdam/conv2d_16/bias/mAdam/conv2d_17/kernel/mAdam/conv2d_17/bias/mAdam/conv2d_18/kernel/mAdam/conv2d_18/bias/mAdam/conv2d_19/kernel/mAdam/conv2d_19/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/conv2d_15/kernel/vAdam/conv2d_15/bias/vAdam/conv2d_16/kernel/vAdam/conv2d_16/bias/vAdam/conv2d_17/kernel/vAdam/conv2d_17/bias/vAdam/conv2d_18/kernel/vAdam/conv2d_18/bias/vAdam/conv2d_19/kernel/vAdam/conv2d_19/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ **
f%R#
!__inference__traced_restore_18523Ка
А
ђ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_17529

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         		ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         		ђ
 
_user_specified_nameinputs
А
ђ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_18177

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         		ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         		ђ
 
_user_specified_nameinputs
Ё
н
'__inference_model_3_layer_call_fn_17936

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђb

unknown_10:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_175612
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_15_layer_call_fn_17435

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_174292
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
═
А
)__inference_conv2d_19_layer_call_fn_18166

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_175292
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         		ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         		ђ
 
_user_specified_nameinputs
М
E
)__inference_flatten_3_layer_call_fn_18182

inputs
identityк
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_175412
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ђb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ю
Ћ
'__inference_dense_3_layer_call_fn_18197

inputs
unknown:	ђb
	unknown_0:
identityѕбStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_175542
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђb: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ђb
 
_user_specified_nameinputs
А
§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_18097

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▓▓ 2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▓▓ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
У
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_18188

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђb2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
иW
Ё
 __inference__wrapped_model_17387
input_4J
0model_3_conv2d_15_conv2d_readvariableop_resource: ?
1model_3_conv2d_15_biasadd_readvariableop_resource: J
0model_3_conv2d_16_conv2d_readvariableop_resource: @?
1model_3_conv2d_16_biasadd_readvariableop_resource:@K
0model_3_conv2d_17_conv2d_readvariableop_resource:@ђ@
1model_3_conv2d_17_biasadd_readvariableop_resource:	ђL
0model_3_conv2d_18_conv2d_readvariableop_resource:ђђ@
1model_3_conv2d_18_biasadd_readvariableop_resource:	ђL
0model_3_conv2d_19_conv2d_readvariableop_resource:ђђ@
1model_3_conv2d_19_biasadd_readvariableop_resource:	ђA
.model_3_dense_3_matmul_readvariableop_resource:	ђb=
/model_3_dense_3_biasadd_readvariableop_resource:
identityѕб(model_3/conv2d_15/BiasAdd/ReadVariableOpб'model_3/conv2d_15/Conv2D/ReadVariableOpб(model_3/conv2d_16/BiasAdd/ReadVariableOpб'model_3/conv2d_16/Conv2D/ReadVariableOpб(model_3/conv2d_17/BiasAdd/ReadVariableOpб'model_3/conv2d_17/Conv2D/ReadVariableOpб(model_3/conv2d_18/BiasAdd/ReadVariableOpб'model_3/conv2d_18/Conv2D/ReadVariableOpб(model_3/conv2d_19/BiasAdd/ReadVariableOpб'model_3/conv2d_19/Conv2D/ReadVariableOpб&model_3/dense_3/BiasAdd/ReadVariableOpб%model_3/dense_3/MatMul/ReadVariableOp}
model_3/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
model_3/rescaling_3/Cast/xЂ
model_3/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model_3/rescaling_3/Cast_1/xБ
model_3/rescaling_3/mulMulinput_4#model_3/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
model_3/rescaling_3/mul╗
model_3/rescaling_3/addAddV2model_3/rescaling_3/mul:z:0%model_3/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
model_3/rescaling_3/add╦
'model_3/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_3/conv2d_15/Conv2D/ReadVariableOpы
model_3/conv2d_15/Conv2DConv2Dmodel_3/rescaling_3/add:z:0/model_3/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ *
paddingVALID*
strides
2
model_3/conv2d_15/Conv2D┬
(model_3/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(model_3/conv2d_15/BiasAdd/ReadVariableOpм
model_3/conv2d_15/BiasAddBiasAdd!model_3/conv2d_15/Conv2D:output:00model_3/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ 2
model_3/conv2d_15/BiasAddў
model_3/conv2d_15/ReluRelu"model_3/conv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:         ▓▓ 2
model_3/conv2d_15/ReluР
 model_3/max_pooling2d_12/MaxPoolMaxPool$model_3/conv2d_15/Relu:activations:0*/
_output_shapes
:         YY *
ksize
*
paddingVALID*
strides
2"
 model_3/max_pooling2d_12/MaxPool╦
'model_3/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02)
'model_3/conv2d_16/Conv2D/ReadVariableOp§
model_3/conv2d_16/Conv2DConv2D)model_3/max_pooling2d_12/MaxPool:output:0/model_3/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@*
paddingVALID*
strides
2
model_3/conv2d_16/Conv2D┬
(model_3/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_3/conv2d_16/BiasAdd/ReadVariableOpл
model_3/conv2d_16/BiasAddBiasAdd!model_3/conv2d_16/Conv2D:output:00model_3/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@2
model_3/conv2d_16/BiasAddќ
model_3/conv2d_16/ReluRelu"model_3/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:         WW@2
model_3/conv2d_16/ReluР
 model_3/max_pooling2d_13/MaxPoolMaxPool$model_3/conv2d_16/Relu:activations:0*/
_output_shapes
:         ++@*
ksize
*
paddingVALID*
strides
2"
 model_3/max_pooling2d_13/MaxPool╠
'model_3/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02)
'model_3/conv2d_17/Conv2D/ReadVariableOp■
model_3/conv2d_17/Conv2DConv2D)model_3/max_pooling2d_13/MaxPool:output:0/model_3/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ*
paddingVALID*
strides
2
model_3/conv2d_17/Conv2D├
(model_3/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02*
(model_3/conv2d_17/BiasAdd/ReadVariableOpЛ
model_3/conv2d_17/BiasAddBiasAdd!model_3/conv2d_17/Conv2D:output:00model_3/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ2
model_3/conv2d_17/BiasAddЌ
model_3/conv2d_17/ReluRelu"model_3/conv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:         ))ђ2
model_3/conv2d_17/Reluс
 model_3/max_pooling2d_14/MaxPoolMaxPool$model_3/conv2d_17/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2"
 model_3/max_pooling2d_14/MaxPool═
'model_3/conv2d_18/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02)
'model_3/conv2d_18/Conv2D/ReadVariableOp■
model_3/conv2d_18/Conv2DConv2D)model_3/max_pooling2d_14/MaxPool:output:0/model_3/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
model_3/conv2d_18/Conv2D├
(model_3/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02*
(model_3/conv2d_18/BiasAdd/ReadVariableOpЛ
model_3/conv2d_18/BiasAddBiasAdd!model_3/conv2d_18/Conv2D:output:00model_3/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
model_3/conv2d_18/BiasAddЌ
model_3/conv2d_18/ReluRelu"model_3/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
model_3/conv2d_18/Reluс
 model_3/max_pooling2d_15/MaxPoolMaxPool$model_3/conv2d_18/Relu:activations:0*0
_output_shapes
:         		ђ*
ksize
*
paddingVALID*
strides
2"
 model_3/max_pooling2d_15/MaxPool═
'model_3/conv2d_19/Conv2D/ReadVariableOpReadVariableOp0model_3_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02)
'model_3/conv2d_19/Conv2D/ReadVariableOp■
model_3/conv2d_19/Conv2DConv2D)model_3/max_pooling2d_15/MaxPool:output:0/model_3/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
model_3/conv2d_19/Conv2D├
(model_3/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp1model_3_conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02*
(model_3/conv2d_19/BiasAdd/ReadVariableOpЛ
model_3/conv2d_19/BiasAddBiasAdd!model_3/conv2d_19/Conv2D:output:00model_3/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
model_3/conv2d_19/BiasAddЌ
model_3/conv2d_19/ReluRelu"model_3/conv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
model_3/conv2d_19/ReluЃ
model_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
model_3/flatten_3/Const╝
model_3/flatten_3/ReshapeReshape$model_3/conv2d_19/Relu:activations:0 model_3/flatten_3/Const:output:0*
T0*(
_output_shapes
:         ђb2
model_3/flatten_3/ReshapeЙ
%model_3/dense_3/MatMul/ReadVariableOpReadVariableOp.model_3_dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђb*
dtype02'
%model_3/dense_3/MatMul/ReadVariableOp┐
model_3/dense_3/MatMulMatMul"model_3/flatten_3/Reshape:output:0-model_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_3/dense_3/MatMul╝
&model_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_3/dense_3/BiasAdd/ReadVariableOp┴
model_3/dense_3/BiasAddBiasAdd model_3/dense_3/MatMul:product:0.model_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
model_3/dense_3/BiasAddЉ
model_3/dense_3/SigmoidSigmoid model_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         2
model_3/dense_3/Sigmoidж
IdentityIdentitymodel_3/dense_3/Sigmoid:y:0)^model_3/conv2d_15/BiasAdd/ReadVariableOp(^model_3/conv2d_15/Conv2D/ReadVariableOp)^model_3/conv2d_16/BiasAdd/ReadVariableOp(^model_3/conv2d_16/Conv2D/ReadVariableOp)^model_3/conv2d_17/BiasAdd/ReadVariableOp(^model_3/conv2d_17/Conv2D/ReadVariableOp)^model_3/conv2d_18/BiasAdd/ReadVariableOp(^model_3/conv2d_18/Conv2D/ReadVariableOp)^model_3/conv2d_19/BiasAdd/ReadVariableOp(^model_3/conv2d_19/Conv2D/ReadVariableOp'^model_3/dense_3/BiasAdd/ReadVariableOp&^model_3/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2T
(model_3/conv2d_15/BiasAdd/ReadVariableOp(model_3/conv2d_15/BiasAdd/ReadVariableOp2R
'model_3/conv2d_15/Conv2D/ReadVariableOp'model_3/conv2d_15/Conv2D/ReadVariableOp2T
(model_3/conv2d_16/BiasAdd/ReadVariableOp(model_3/conv2d_16/BiasAdd/ReadVariableOp2R
'model_3/conv2d_16/Conv2D/ReadVariableOp'model_3/conv2d_16/Conv2D/ReadVariableOp2T
(model_3/conv2d_17/BiasAdd/ReadVariableOp(model_3/conv2d_17/BiasAdd/ReadVariableOp2R
'model_3/conv2d_17/Conv2D/ReadVariableOp'model_3/conv2d_17/Conv2D/ReadVariableOp2T
(model_3/conv2d_18/BiasAdd/ReadVariableOp(model_3/conv2d_18/BiasAdd/ReadVariableOp2R
'model_3/conv2d_18/Conv2D/ReadVariableOp'model_3/conv2d_18/Conv2D/ReadVariableOp2T
(model_3/conv2d_19/BiasAdd/ReadVariableOp(model_3/conv2d_19/BiasAdd/ReadVariableOp2R
'model_3/conv2d_19/Conv2D/ReadVariableOp'model_3/conv2d_19/Conv2D/ReadVariableOp2P
&model_3/dense_3/BiasAdd/ReadVariableOp&model_3/dense_3/BiasAdd/ReadVariableOp2N
%model_3/dense_3/MatMul/ReadVariableOp%model_3/dense_3/MatMul/ReadVariableOp:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
А
ђ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_18157

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
░

З
B__inference_dense_3_layer_call_and_return_conditional_losses_17554

inputs1
matmul_readvariableop_resource:	ђb-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђb*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђb
 
_user_specified_nameinputs
А
ђ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_17511

inputs:
conv2d_readvariableop_resource:ђђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЌ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ћ
§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_17475

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         WW@2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         WW@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         YY : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         YY 
 
_user_specified_nameinputs
Ю
 
D__inference_conv2d_17_layer_call_and_return_conditional_losses_18137

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ))ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ))ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ++@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ++@
 
_user_specified_nameinputs
░

З
B__inference_dense_3_layer_call_and_return_conditional_losses_18208

inputs1
matmul_readvariableop_resource:	ђb-
biasadd_readvariableop_resource:
identityѕбBiasAdd/ReadVariableOpбMatMul/ReadVariableOpј
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ђb*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЂ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         2	
Sigmoidљ
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ђb: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ђb
 
_user_specified_nameinputs
¤K
Т	
B__inference_model_3_layer_call_and_return_conditional_losses_18021

inputsB
(conv2d_15_conv2d_readvariableop_resource: 7
)conv2d_15_biasadd_readvariableop_resource: B
(conv2d_16_conv2d_readvariableop_resource: @7
)conv2d_16_biasadd_readvariableop_resource:@C
(conv2d_17_conv2d_readvariableop_resource:@ђ8
)conv2d_17_biasadd_readvariableop_resource:	ђD
(conv2d_18_conv2d_readvariableop_resource:ђђ8
)conv2d_18_biasadd_readvariableop_resource:	ђD
(conv2d_19_conv2d_readvariableop_resource:ђђ8
)conv2d_19_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђb5
'dense_3_biasadd_readvariableop_resource:
identityѕб conv2d_15/BiasAdd/ReadVariableOpбconv2d_15/Conv2D/ReadVariableOpб conv2d_16/BiasAdd/ReadVariableOpбconv2d_16/Conv2D/ReadVariableOpб conv2d_17/BiasAdd/ReadVariableOpбconv2d_17/Conv2D/ReadVariableOpб conv2d_18/BiasAdd/ReadVariableOpбconv2d_18/Conv2D/ReadVariableOpб conv2d_19/BiasAdd/ReadVariableOpбconv2d_19/Conv2D/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xі
rescaling_3/mulMulinputsrescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add│
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_15/Conv2D/ReadVariableOpЛ
conv2d_15/Conv2DConv2Drescaling_3/add:z:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ *
paddingVALID*
strides
2
conv2d_15/Conv2Dф
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp▓
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ 2
conv2d_15/BiasAddђ
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:         ▓▓ 2
conv2d_15/Relu╩
max_pooling2d_12/MaxPoolMaxPoolconv2d_15/Relu:activations:0*/
_output_shapes
:         YY *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPool│
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_16/Conv2D/ReadVariableOpП
conv2d_16/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@*
paddingVALID*
strides
2
conv2d_16/Conv2Dф
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp░
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:         WW@2
conv2d_16/Relu╩
max_pooling2d_13/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:         ++@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool┤
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02!
conv2d_17/Conv2D/ReadVariableOpя
conv2d_17/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ*
paddingVALID*
strides
2
conv2d_17/Conv2DФ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp▒
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:         ))ђ2
conv2d_17/Relu╦
max_pooling2d_14/MaxPoolMaxPoolconv2d_17/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPoolх
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02!
conv2d_18/Conv2D/ReadVariableOpя
conv2d_18/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
conv2d_18/Conv2DФ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp▒
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
conv2d_18/Relu╦
max_pooling2d_15/MaxPoolMaxPoolconv2d_18/Relu:activations:0*0
_output_shapes
:         		ђ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPoolх
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02!
conv2d_19/Conv2D/ReadVariableOpя
conv2d_19/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
conv2d_19/Conv2DФ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp▒
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
conv2d_19/BiasAdd
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
conv2d_19/Relus
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
flatten_3/Constю
flatten_3/ReshapeReshapeconv2d_19/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         ђb2
flatten_3/Reshapeд
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђb*
dtype02
dense_3/MatMul/ReadVariableOpЪ
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMulц
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpА
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/BiasAddy
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_3/SigmoidЂ
IdentityIdentitydense_3/Sigmoid:y:0!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Т6
­
B__inference_model_3_layer_call_and_return_conditional_losses_17728

inputs)
conv2d_15_17692: 
conv2d_15_17694: )
conv2d_16_17698: @
conv2d_16_17700:@*
conv2d_17_17704:@ђ
conv2d_17_17706:	ђ+
conv2d_18_17710:ђђ
conv2d_18_17712:	ђ+
conv2d_19_17716:ђђ
conv2d_19_17718:	ђ 
dense_3_17722:	ђb
dense_3_17724:
identityѕб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб!conv2d_19/StatefulPartitionedCallбdense_3/StatefulPartitionedCallm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xі
rescaling_3/mulMulinputsrescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add░
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallrescaling_3/add:z:0conv2d_15_17692conv2d_15_17694*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▓▓ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_174572#
!conv2d_15/StatefulPartitionedCallџ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         YY * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_173932"
 max_pooling2d_12/PartitionedCall─
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_17698conv2d_16_17700*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         WW@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_174752#
!conv2d_16/StatefulPartitionedCallџ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ++@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_174052"
 max_pooling2d_13/PartitionedCall┼
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_17704conv2d_17_17706*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ))ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_174932#
!conv2d_17/StatefulPartitionedCallЏ
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_174172"
 max_pooling2d_14/PartitionedCall┼
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_17710conv2d_18_17712*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_175112#
!conv2d_18/StatefulPartitionedCallЏ
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_174292"
 max_pooling2d_15/PartitionedCall┼
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_19_17716conv2d_19_17718*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_175292#
!conv2d_19/StatefulPartitionedCall■
flatten_3/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_175412
flatten_3/PartitionedCallФ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_17722dense_3_17724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_175542!
dense_3/StatefulPartitionedCallм
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ж6
ы
B__inference_model_3_layer_call_and_return_conditional_losses_17827
input_4)
conv2d_15_17791: 
conv2d_15_17793: )
conv2d_16_17797: @
conv2d_16_17799:@*
conv2d_17_17803:@ђ
conv2d_17_17805:	ђ+
conv2d_18_17809:ђђ
conv2d_18_17811:	ђ+
conv2d_19_17815:ђђ
conv2d_19_17817:	ђ 
dense_3_17821:	ђb
dense_3_17823:
identityѕб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб!conv2d_19/StatefulPartitionedCallбdense_3/StatefulPartitionedCallm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xІ
rescaling_3/mulMulinput_4rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add░
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallrescaling_3/add:z:0conv2d_15_17791conv2d_15_17793*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▓▓ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_174572#
!conv2d_15/StatefulPartitionedCallџ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         YY * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_173932"
 max_pooling2d_12/PartitionedCall─
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_17797conv2d_16_17799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         WW@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_174752#
!conv2d_16/StatefulPartitionedCallџ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ++@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_174052"
 max_pooling2d_13/PartitionedCall┼
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_17803conv2d_17_17805*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ))ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_174932#
!conv2d_17/StatefulPartitionedCallЏ
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_174172"
 max_pooling2d_14/PartitionedCall┼
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_17809conv2d_18_17811*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_175112#
!conv2d_18/StatefulPartitionedCallЏ
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_174292"
 max_pooling2d_15/PartitionedCall┼
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_19_17815conv2d_19_17817*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_175292#
!conv2d_19/StatefulPartitionedCall■
flatten_3/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_175412
flatten_3/PartitionedCallФ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_17821dense_3_17823*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_175542!
dense_3/StatefulPartitionedCallм
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
╬
ъ
)__inference_conv2d_15_layer_call_fn_18086

inputs!
unknown: 
	unknown_0: 
identityѕбStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▓▓ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_174572
StatefulPartitionedCallў
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         ▓▓ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Ю
 
D__inference_conv2d_17_layer_call_and_return_conditional_losses_17493

inputs9
conv2d_readvariableop_resource:@ђ.
biasadd_readvariableop_resource:	ђ
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpќ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02
Conv2D/ReadVariableOpЦ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ*
paddingVALID*
strides
2
Conv2DЇ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02
BiasAdd/ReadVariableOpЅ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         ))ђ2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         ))ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ++@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ++@
 
_user_specified_nameinputs
А
§
D__inference_conv2d_15_layer_call_and_return_conditional_losses_17457

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ *
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpі
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ 2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ▓▓ 2
ReluА
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         ▓▓ 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ┤┤: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_14_layer_call_fn_17423

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_174172
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┐╩
л
!__inference__traced_restore_18523
file_prefix;
!assignvariableop_conv2d_15_kernel: /
!assignvariableop_1_conv2d_15_bias: =
#assignvariableop_2_conv2d_16_kernel: @/
!assignvariableop_3_conv2d_16_bias:@>
#assignvariableop_4_conv2d_17_kernel:@ђ0
!assignvariableop_5_conv2d_17_bias:	ђ?
#assignvariableop_6_conv2d_18_kernel:ђђ0
!assignvariableop_7_conv2d_18_bias:	ђ?
#assignvariableop_8_conv2d_19_kernel:ђђ0
!assignvariableop_9_conv2d_19_bias:	ђ5
"assignvariableop_10_dense_3_kernel:	ђb.
 assignvariableop_11_dense_3_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: #
assignvariableop_17_total: #
assignvariableop_18_count: 1
"assignvariableop_19_true_positives:	╚1
"assignvariableop_20_true_negatives:	╚2
#assignvariableop_21_false_positives:	╚2
#assignvariableop_22_false_negatives:	╚E
+assignvariableop_23_adam_conv2d_15_kernel_m: 7
)assignvariableop_24_adam_conv2d_15_bias_m: E
+assignvariableop_25_adam_conv2d_16_kernel_m: @7
)assignvariableop_26_adam_conv2d_16_bias_m:@F
+assignvariableop_27_adam_conv2d_17_kernel_m:@ђ8
)assignvariableop_28_adam_conv2d_17_bias_m:	ђG
+assignvariableop_29_adam_conv2d_18_kernel_m:ђђ8
)assignvariableop_30_adam_conv2d_18_bias_m:	ђG
+assignvariableop_31_adam_conv2d_19_kernel_m:ђђ8
)assignvariableop_32_adam_conv2d_19_bias_m:	ђ<
)assignvariableop_33_adam_dense_3_kernel_m:	ђb5
'assignvariableop_34_adam_dense_3_bias_m:E
+assignvariableop_35_adam_conv2d_15_kernel_v: 7
)assignvariableop_36_adam_conv2d_15_bias_v: E
+assignvariableop_37_adam_conv2d_16_kernel_v: @7
)assignvariableop_38_adam_conv2d_16_bias_v:@F
+assignvariableop_39_adam_conv2d_17_kernel_v:@ђ8
)assignvariableop_40_adam_conv2d_17_bias_v:	ђG
+assignvariableop_41_adam_conv2d_18_kernel_v:ђђ8
)assignvariableop_42_adam_conv2d_18_bias_v:	ђG
+assignvariableop_43_adam_conv2d_19_kernel_v:ђђ8
)assignvariableop_44_adam_conv2d_19_bias_v:	ђ<
)assignvariableop_45_adam_dense_3_kernel_v:	ђb5
'assignvariableop_46_adam_dense_3_bias_v:
identity_48ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_10бAssignVariableOp_11бAssignVariableOp_12бAssignVariableOp_13бAssignVariableOp_14бAssignVariableOp_15бAssignVariableOp_16бAssignVariableOp_17бAssignVariableOp_18бAssignVariableOp_19бAssignVariableOp_2бAssignVariableOp_20бAssignVariableOp_21бAssignVariableOp_22бAssignVariableOp_23бAssignVariableOp_24бAssignVariableOp_25бAssignVariableOp_26бAssignVariableOp_27бAssignVariableOp_28бAssignVariableOp_29бAssignVariableOp_3бAssignVariableOp_30бAssignVariableOp_31бAssignVariableOp_32бAssignVariableOp_33бAssignVariableOp_34бAssignVariableOp_35бAssignVariableOp_36бAssignVariableOp_37бAssignVariableOp_38бAssignVariableOp_39бAssignVariableOp_4бAssignVariableOp_40бAssignVariableOp_41бAssignVariableOp_42бAssignVariableOp_43бAssignVariableOp_44бAssignVariableOp_45бAssignVariableOp_46бAssignVariableOp_5бAssignVariableOp_6бAssignVariableOp_7бAssignVariableOp_8бAssignVariableOp_9м
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*я
valueнBЛ0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesЬ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesъ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*о
_output_shapes├
└::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2е
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_16_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3д
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_16_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4е
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_17_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5д
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_17_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6е
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_18_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7д
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_18_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8е
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_19_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9д
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_19_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10ф
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11е
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_12Ц
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Д
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Д
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15д
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16«
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17А
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18А
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19ф
AssignVariableOp_19AssignVariableOp"assignvariableop_19_true_positivesIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20ф
AssignVariableOp_20AssignVariableOp"assignvariableop_20_true_negativesIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ф
AssignVariableOp_21AssignVariableOp#assignvariableop_21_false_positivesIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ф
AssignVariableOp_22AssignVariableOp#assignvariableop_22_false_negativesIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23│
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_conv2d_15_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24▒
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_conv2d_15_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25│
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_conv2d_16_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26▒
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_conv2d_16_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27│
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_17_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28▒
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_17_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29│
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_18_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30▒
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_18_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31│
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_19_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32▒
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_19_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33▒
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_dense_3_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34»
AssignVariableOp_34AssignVariableOp'assignvariableop_34_adam_dense_3_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35│
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_15_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36▒
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_15_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37│
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_16_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38▒
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_16_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39│
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_17_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▒
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_17_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41│
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_conv2d_18_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42▒
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_conv2d_18_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43│
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_19_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44▒
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_19_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45▒
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_3_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46»
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_dense_3_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_469
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpУ
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_47█
Identity_48IdentityIdentity_47:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_48"#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
к
ъ
)__inference_conv2d_16_layer_call_fn_18106

inputs!
unknown: @
	unknown_0:@
identityѕбStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         WW@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_174752
StatefulPartitionedCallќ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:         WW@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         YY : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         YY 
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_13_layer_call_fn_17411

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_174052
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_17541

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ђb2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ђb2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ђ:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_17393

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_17429

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ф
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_17405

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
¤K
Т	
B__inference_model_3_layer_call_and_return_conditional_losses_18077

inputsB
(conv2d_15_conv2d_readvariableop_resource: 7
)conv2d_15_biasadd_readvariableop_resource: B
(conv2d_16_conv2d_readvariableop_resource: @7
)conv2d_16_biasadd_readvariableop_resource:@C
(conv2d_17_conv2d_readvariableop_resource:@ђ8
)conv2d_17_biasadd_readvariableop_resource:	ђD
(conv2d_18_conv2d_readvariableop_resource:ђђ8
)conv2d_18_biasadd_readvariableop_resource:	ђD
(conv2d_19_conv2d_readvariableop_resource:ђђ8
)conv2d_19_biasadd_readvariableop_resource:	ђ9
&dense_3_matmul_readvariableop_resource:	ђb5
'dense_3_biasadd_readvariableop_resource:
identityѕб conv2d_15/BiasAdd/ReadVariableOpбconv2d_15/Conv2D/ReadVariableOpб conv2d_16/BiasAdd/ReadVariableOpбconv2d_16/Conv2D/ReadVariableOpб conv2d_17/BiasAdd/ReadVariableOpбconv2d_17/Conv2D/ReadVariableOpб conv2d_18/BiasAdd/ReadVariableOpбconv2d_18/Conv2D/ReadVariableOpб conv2d_19/BiasAdd/ReadVariableOpбconv2d_19/Conv2D/ReadVariableOpбdense_3/BiasAdd/ReadVariableOpбdense_3/MatMul/ReadVariableOpm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xі
rescaling_3/mulMulinputsrescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add│
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_15/Conv2D/ReadVariableOpЛ
conv2d_15/Conv2DConv2Drescaling_3/add:z:0'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ *
paddingVALID*
strides
2
conv2d_15/Conv2Dф
 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02"
 conv2d_15/BiasAdd/ReadVariableOp▓
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ▓▓ 2
conv2d_15/BiasAddђ
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:         ▓▓ 2
conv2d_15/Relu╩
max_pooling2d_12/MaxPoolMaxPoolconv2d_15/Relu:activations:0*/
_output_shapes
:         YY *
ksize
*
paddingVALID*
strides
2
max_pooling2d_12/MaxPool│
conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_16/Conv2D/ReadVariableOpП
conv2d_16/Conv2DConv2D!max_pooling2d_12/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@*
paddingVALID*
strides
2
conv2d_16/Conv2Dф
 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_16/BiasAdd/ReadVariableOp░
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@2
conv2d_16/BiasAdd~
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:         WW@2
conv2d_16/Relu╩
max_pooling2d_13/MaxPoolMaxPoolconv2d_16/Relu:activations:0*/
_output_shapes
:         ++@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_13/MaxPool┤
conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@ђ*
dtype02!
conv2d_17/Conv2D/ReadVariableOpя
conv2d_17/Conv2DConv2D!max_pooling2d_13/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ*
paddingVALID*
strides
2
conv2d_17/Conv2DФ
 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_17/BiasAdd/ReadVariableOp▒
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ))ђ2
conv2d_17/BiasAdd
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:         ))ђ2
conv2d_17/Relu╦
max_pooling2d_14/MaxPoolMaxPoolconv2d_17/Relu:activations:0*0
_output_shapes
:         ђ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_14/MaxPoolх
conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02!
conv2d_18/Conv2D/ReadVariableOpя
conv2d_18/Conv2DConv2D!max_pooling2d_14/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
conv2d_18/Conv2DФ
 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_18/BiasAdd/ReadVariableOp▒
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
conv2d_18/BiasAdd
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
conv2d_18/Relu╦
max_pooling2d_15/MaxPoolMaxPoolconv2d_18/Relu:activations:0*0
_output_shapes
:         		ђ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_15/MaxPoolх
conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:ђђ*
dtype02!
conv2d_19/Conv2D/ReadVariableOpя
conv2d_19/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ*
paddingVALID*
strides
2
conv2d_19/Conv2DФ
 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:ђ*
dtype02"
 conv2d_19/BiasAdd/ReadVariableOp▒
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         ђ2
conv2d_19/BiasAdd
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:         ђ2
conv2d_19/Relus
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"     1  2
flatten_3/Constю
flatten_3/ReshapeReshapeconv2d_19/Relu:activations:0flatten_3/Const:output:0*
T0*(
_output_shapes
:         ђb2
flatten_3/Reshapeд
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	ђb*
dtype02
dense_3/MatMul/ReadVariableOpЪ
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/MatMulц
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpА
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dense_3/BiasAddy
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         2
dense_3/SigmoidЂ
IdentityIdentitydense_3/Sigmoid:y:0!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Р

Л
#__inference_signature_wrapper_17907
input_4!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђb

unknown_10:
identityѕбStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *)
f$R"
 __inference__wrapped_model_173872
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
ѕ
Н
'__inference_model_3_layer_call_fn_17588
input_4!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђb

unknown_10:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_175612
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
Ф
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_17417

inputs
identityГ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
2	
MaxPoolЄ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ћ
§
D__inference_conv2d_16_layer_call_and_return_conditional_losses_18117

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityѕбBiasAdd/ReadVariableOpбConv2D/ReadVariableOpЋ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpц
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@*
paddingVALID*
strides
2
Conv2Dї
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpѕ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         WW@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         WW@2
ReluЪ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:         WW@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         YY : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         YY 
 
_user_specified_nameinputs
═
А
)__inference_conv2d_18_layer_call_fn_18146

inputs#
unknown:ђђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_175112
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ђ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ђ
 
_user_specified_nameinputs
ж6
ы
B__inference_model_3_layer_call_and_return_conditional_losses_17870
input_4)
conv2d_15_17834: 
conv2d_15_17836: )
conv2d_16_17840: @
conv2d_16_17842:@*
conv2d_17_17846:@ђ
conv2d_17_17848:	ђ+
conv2d_18_17852:ђђ
conv2d_18_17854:	ђ+
conv2d_19_17858:ђђ
conv2d_19_17860:	ђ 
dense_3_17864:	ђb
dense_3_17866:
identityѕб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб!conv2d_19/StatefulPartitionedCallбdense_3/StatefulPartitionedCallm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xІ
rescaling_3/mulMulinput_4rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add░
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallrescaling_3/add:z:0conv2d_15_17834conv2d_15_17836*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▓▓ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_174572#
!conv2d_15/StatefulPartitionedCallџ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         YY * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_173932"
 max_pooling2d_12/PartitionedCall─
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_17840conv2d_16_17842*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         WW@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_174752#
!conv2d_16/StatefulPartitionedCallџ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ++@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_174052"
 max_pooling2d_13/PartitionedCall┼
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_17846conv2d_17_17848*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ))ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_174932#
!conv2d_17/StatefulPartitionedCallЏ
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_174172"
 max_pooling2d_14/PartitionedCall┼
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_17852conv2d_18_17854*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_175112#
!conv2d_18/StatefulPartitionedCallЏ
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_174292"
 max_pooling2d_15/PartitionedCall┼
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_19_17858conv2d_19_17860*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_175292#
!conv2d_19/StatefulPartitionedCall■
flatten_3/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_175412
flatten_3/PartitionedCallФ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_17864dense_3_17866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_175542!
dense_3/StatefulPartitionedCallм
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
┴b
▒
__inference__traced_save_18372
file_prefix/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop-
)savev2_true_positives_read_readvariableop-
)savev2_true_negatives_read_readvariableop.
*savev2_false_positives_read_readvariableop.
*savev2_false_negatives_read_readvariableop6
2savev2_adam_conv2d_15_kernel_m_read_readvariableop4
0savev2_adam_conv2d_15_bias_m_read_readvariableop6
2savev2_adam_conv2d_16_kernel_m_read_readvariableop4
0savev2_adam_conv2d_16_bias_m_read_readvariableop6
2savev2_adam_conv2d_17_kernel_m_read_readvariableop4
0savev2_adam_conv2d_17_bias_m_read_readvariableop6
2savev2_adam_conv2d_18_kernel_m_read_readvariableop4
0savev2_adam_conv2d_18_bias_m_read_readvariableop6
2savev2_adam_conv2d_19_kernel_m_read_readvariableop4
0savev2_adam_conv2d_19_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop6
2savev2_adam_conv2d_15_kernel_v_read_readvariableop4
0savev2_adam_conv2d_15_bias_v_read_readvariableop6
2savev2_adam_conv2d_16_kernel_v_read_readvariableop4
0savev2_adam_conv2d_16_bias_v_read_readvariableop6
2savev2_adam_conv2d_17_kernel_v_read_readvariableop4
0savev2_adam_conv2d_17_bias_v_read_readvariableop6
2savev2_adam_conv2d_18_kernel_v_read_readvariableop4
0savev2_adam_conv2d_18_bias_v_read_readvariableop6
2savev2_adam_conv2d_19_kernel_v_read_readvariableop4
0savev2_adam_conv2d_19_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1ѕбMergeV2CheckpointsЈ
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1І
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardд
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╠
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*я
valueнBЛ0B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_positives/.ATTRIBUTES/VARIABLE_VALUEB=keras_api/metrics/1/true_negatives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_positives/.ATTRIBUTES/VARIABLE_VALUEB>keras_api/metrics/1/false_negatives/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesУ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesз
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop)savev2_true_positives_read_readvariableop)savev2_true_negatives_read_readvariableop*savev2_false_positives_read_readvariableop*savev2_false_negatives_read_readvariableop2savev2_adam_conv2d_15_kernel_m_read_readvariableop0savev2_adam_conv2d_15_bias_m_read_readvariableop2savev2_adam_conv2d_16_kernel_m_read_readvariableop0savev2_adam_conv2d_16_bias_m_read_readvariableop2savev2_adam_conv2d_17_kernel_m_read_readvariableop0savev2_adam_conv2d_17_bias_m_read_readvariableop2savev2_adam_conv2d_18_kernel_m_read_readvariableop0savev2_adam_conv2d_18_bias_m_read_readvariableop2savev2_adam_conv2d_19_kernel_m_read_readvariableop0savev2_adam_conv2d_19_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop2savev2_adam_conv2d_15_kernel_v_read_readvariableop0savev2_adam_conv2d_15_bias_v_read_readvariableop2savev2_adam_conv2d_16_kernel_v_read_readvariableop0savev2_adam_conv2d_16_bias_v_read_readvariableop2savev2_adam_conv2d_17_kernel_v_read_readvariableop0savev2_adam_conv2d_17_bias_v_read_readvariableop2savev2_adam_conv2d_18_kernel_v_read_readvariableop0savev2_adam_conv2d_18_bias_v_read_readvariableop2savev2_adam_conv2d_19_kernel_v_read_readvariableop0savev2_adam_conv2d_19_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *>
dtypes4
220	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesА
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ш
_input_shapesС
р: : : : @:@:@ђ:ђ:ђђ:ђ:ђђ:ђ:	ђb:: : : : : : : :╚:╚:╚:╚: : : @:@:@ђ:ђ:ђђ:ђ:ђђ:ђ:	ђb:: : : @:@:@ђ:ђ:ђђ:ђ:ђђ:ђ:	ђb:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:.	*
(
_output_shapes
:ђђ:!


_output_shapes	
:ђ:%!

_output_shapes
:	ђb: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
:╚:!

_output_shapes	
:╚:!

_output_shapes	
:╚:!

_output_shapes	
:╚:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@ђ:!

_output_shapes	
:ђ:.*
(
_output_shapes
:ђђ:!

_output_shapes	
:ђ:. *
(
_output_shapes
:ђђ:!!

_output_shapes	
:ђ:%"!

_output_shapes
:	ђb: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@:-()
'
_output_shapes
:@ђ:!)

_output_shapes	
:ђ:.**
(
_output_shapes
:ђђ:!+

_output_shapes	
:ђ:.,*
(
_output_shapes
:ђђ:!-

_output_shapes	
:ђ:%.!

_output_shapes
:	ђb: /

_output_shapes
::0

_output_shapes
: 
╩
а
)__inference_conv2d_17_layer_call_fn_18126

inputs"
unknown:@ђ
	unknown_0:	ђ
identityѕбStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ))ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_174932
StatefulPartitionedCallЌ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         ))ђ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ++@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ++@
 
_user_specified_nameinputs
Ё
н
'__inference_model_3_layer_call_fn_17965

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђb

unknown_10:
identityѕбStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_177282
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
Т6
­
B__inference_model_3_layer_call_and_return_conditional_losses_17561

inputs)
conv2d_15_17458: 
conv2d_15_17460: )
conv2d_16_17476: @
conv2d_16_17478:@*
conv2d_17_17494:@ђ
conv2d_17_17496:	ђ+
conv2d_18_17512:ђђ
conv2d_18_17514:	ђ+
conv2d_19_17530:ђђ
conv2d_19_17532:	ђ 
dense_3_17555:	ђb
dense_3_17557:
identityѕб!conv2d_15/StatefulPartitionedCallб!conv2d_16/StatefulPartitionedCallб!conv2d_17/StatefulPartitionedCallб!conv2d_18/StatefulPartitionedCallб!conv2d_19/StatefulPartitionedCallбdense_3/StatefulPartitionedCallm
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ђђђ;2
rescaling_3/Cast/xq
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_3/Cast_1/xі
rescaling_3/mulMulinputsrescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/mulЏ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:         ┤┤2
rescaling_3/add░
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallrescaling_3/add:z:0conv2d_15_17458conv2d_15_17460*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ▓▓ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_174572#
!conv2d_15/StatefulPartitionedCallџ
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         YY * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_173932"
 max_pooling2d_12/PartitionedCall─
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_16_17476conv2d_16_17478*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         WW@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_174752#
!conv2d_16/StatefulPartitionedCallџ
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ++@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_174052"
 max_pooling2d_13/PartitionedCall┼
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_17_17494conv2d_17_17496*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ))ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_174932#
!conv2d_17/StatefulPartitionedCallЏ
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_174172"
 max_pooling2d_14/PartitionedCall┼
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_18_17512conv2d_18_17514*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_18_layer_call_and_return_conditional_losses_175112#
!conv2d_18/StatefulPartitionedCallЏ
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         		ђ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_174292"
 max_pooling2d_15/PartitionedCall┼
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_19_17530conv2d_19_17532*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ђ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_conv2d_19_layer_call_and_return_conditional_losses_175292#
!conv2d_19/StatefulPartitionedCall■
flatten_3/PartitionedCallPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ђb* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_175412
flatten_3/PartitionedCallФ
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_3_17555dense_3_17557*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_175542!
dense_3/StatefulPartitionedCallм
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:         ┤┤
 
_user_specified_nameinputs
ѕ
Н
'__inference_model_3_layer_call_fn_17784
input_4!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@$
	unknown_3:@ђ
	unknown_4:	ђ%
	unknown_5:ђђ
	unknown_6:	ђ%
	unknown_7:ђђ
	unknown_8:	ђ
	unknown_9:	ђb

unknown_10:
identityѕбStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8ѓ *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_177282
StatefulPartitionedCallј
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:         ┤┤: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:         ┤┤
!
_user_specified_name	input_4
┌
L
0__inference_max_pooling2d_12_layer_call_fn_17399

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_173932
PartitionedCallЈ
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┤
serving_defaultа
E
input_4:
serving_default_input_4:0         ┤┤;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:ЫЛ
ІЌ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
▓__call__
+│&call_and_return_all_conditional_losses
┤_default_save_signature"Зњ
_tf_keras_networkОњ{"name": "model_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 180, 180, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": []}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "rescaling_3", "inbound_nodes": [[["input_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["rescaling_3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_12", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["max_pooling2d_12", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_13", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["max_pooling2d_13", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_14", "inbound_nodes": [[["conv2d_17", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["max_pooling2d_14", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_15", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["max_pooling2d_15", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["flatten_3", 0, 0, {}]]]}], "input_layers": [["input_4", 0, 0]], "output_layers": [["dense_3", 0, 0]]}, "shared_object_id": 25, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 180, 180, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 180, 180, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 180, 180, 3]}, "float32", "input_4"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_3", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 180, 180, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}, "name": "input_4", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "rescaling_3", "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_15", "inbound_nodes": [[["rescaling_3", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_12", "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_16", "inbound_nodes": [[["max_pooling2d_12", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_13", "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_17", "inbound_nodes": [[["max_pooling2d_13", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_14", "inbound_nodes": [[["conv2d_17", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_18", "inbound_nodes": [[["max_pooling2d_14", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_15", "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_19", "inbound_nodes": [[["max_pooling2d_15", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["flatten_3", 0, 0, {}]]], "shared_object_id": 24}], "input_layers": [["input_4", 0, 0]], "output_layers": [["dense_3", 0, 0]]}}, "training_config": {"loss": "binary_crossentropy", "metrics": [[{"class_name": "AUC", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}, "shared_object_id": 27}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
§"Щ
_tf_keras_input_layer┌{"class_name": "InputLayer", "name": "input_4", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 180, 180, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 180, 180, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_4"}}
«
	keras_api"ю
_tf_keras_layerѓ{"name": "rescaling_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "rescaling_3", "trainable": true, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "inbound_nodes": [[["input_4", 0, 0, {}]]], "shared_object_id": 1}
ё

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
х__call__
+Х&call_and_return_all_conditional_losses"П	
_tf_keras_layer├	{"name": "conv2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_15", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["rescaling_3", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 180, 180, 3]}}
Я
trainable_variables
	variables
regularization_losses
	keras_api
и__call__
+И&call_and_return_all_conditional_losses"¤
_tf_keras_layerх{"name": "max_pooling2d_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_12", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_15", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 29}}
Ѕ

kernel
 bias
!trainable_variables
"	variables
#regularization_losses
$	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"Р	
_tf_keras_layer╚	{"name": "conv2d_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_16", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_12", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 89, 89, 32]}}
Я
%trainable_variables
&	variables
'regularization_losses
(	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"¤
_tf_keras_layerх{"name": "max_pooling2d_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_13", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_16", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 31}}
Ї

)kernel
*bias
+trainable_variables
,	variables
-regularization_losses
.	keras_api
й__call__
+Й&call_and_return_all_conditional_losses"Т	
_tf_keras_layer╠	{"name": "conv2d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_17", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_13", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 32}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 43, 43, 64]}}
р
/trainable_variables
0	variables
1regularization_losses
2	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"name": "max_pooling2d_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_14", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_17", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 33}}
Ј

3kernel
4bias
5trainable_variables
6	variables
7regularization_losses
8	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"У	
_tf_keras_layer╬	{"name": "conv2d_18", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_18", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_14", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 34}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 20, 20, 128]}}
р
9trainable_variables
:	variables
;regularization_losses
<	keras_api
├__call__
+─&call_and_return_all_conditional_losses"л
_tf_keras_layerХ{"name": "max_pooling2d_15", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_15", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_18", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 35}}
Ї

=kernel
>bias
?trainable_variables
@	variables
Aregularization_losses
B	keras_api
┼__call__
+к&call_and_return_all_conditional_losses"Т	
_tf_keras_layer╠	{"name": "conv2d_19", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_19", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_15", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 36}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9, 9, 256]}}
к
Ctrainable_variables
D	variables
Eregularization_losses
F	keras_api
К__call__
+╚&call_and_return_all_conditional_losses"х
_tf_keras_layerЏ{"name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_19", 0, 0, {}]]], "shared_object_id": 21, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 37}}
ѕ	

Gkernel
Hbias
Itrainable_variables
J	variables
Kregularization_losses
L	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"р
_tf_keras_layerК{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 1, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["flatten_3", 0, 0, {}]]], "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 12544}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12544]}}
├
Miter

Nbeta_1

Obeta_2
	Pdecay
Qlearning_ratemџmЏmю mЮ)mъ*mЪ3mа4mА=mб>mБGmцHmЦvдvДvе vЕ)vф*vФ3vг4vГ=v«>v»Gv░Hv▒"
	optimizer
v
0
1
2
 3
)4
*5
36
47
=8
>9
G10
H11"
trackable_list_wrapper
v
0
1
2
 3
)4
*5
36
47
=8
>9
G10
H11"
trackable_list_wrapper
 "
trackable_list_wrapper
╬
trainable_variables
	variables

Rlayers
Slayer_metrics
Tmetrics
regularization_losses
Unon_trainable_variables
Vlayer_regularization_losses
▓__call__
┤_default_save_signature
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
-
╦serving_default"
signature_map
"
_generic_user_object
*:( 2conv2d_15/kernel
: 2conv2d_15/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
trainable_variables

Wlayers
	variables
Xlayer_metrics
Ymetrics
regularization_losses
Znon_trainable_variables
[layer_regularization_losses
х__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
trainable_variables

\layers
	variables
]layer_metrics
^metrics
regularization_losses
_non_trainable_variables
`layer_regularization_losses
и__call__
+И&call_and_return_all_conditional_losses
'И"call_and_return_conditional_losses"
_generic_user_object
*:( @2conv2d_16/kernel
:@2conv2d_16/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
!trainable_variables

alayers
"	variables
blayer_metrics
cmetrics
#regularization_losses
dnon_trainable_variables
elayer_regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
%trainable_variables

flayers
&	variables
glayer_metrics
hmetrics
'regularization_losses
inon_trainable_variables
jlayer_regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
+:)@ђ2conv2d_17/kernel
:ђ2conv2d_17/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
░
+trainable_variables

klayers
,	variables
llayer_metrics
mmetrics
-regularization_losses
nnon_trainable_variables
olayer_regularization_losses
й__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
/trainable_variables

players
0	variables
qlayer_metrics
rmetrics
1regularization_losses
snon_trainable_variables
tlayer_regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
,:*ђђ2conv2d_18/kernel
:ђ2conv2d_18/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
░
5trainable_variables

ulayers
6	variables
vlayer_metrics
wmetrics
7regularization_losses
xnon_trainable_variables
ylayer_regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
9trainable_variables

zlayers
:	variables
{layer_metrics
|metrics
;regularization_losses
}non_trainable_variables
~layer_regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
,:*ђђ2conv2d_19/kernel
:ђ2conv2d_19/bias
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
┤
?trainable_variables

layers
@	variables
ђlayer_metrics
Ђmetrics
Aregularization_losses
ѓnon_trainable_variables
 Ѓlayer_regularization_losses
┼__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
х
Ctrainable_variables
ёlayers
D	variables
Ёlayer_metrics
єmetrics
Eregularization_losses
Єnon_trainable_variables
 ѕlayer_regularization_losses
К__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
!:	ђb2dense_3/kernel
:2dense_3/bias
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
х
Itrainable_variables
Ѕlayers
J	variables
іlayer_metrics
Іmetrics
Kregularization_losses
їnon_trainable_variables
 Їlayer_regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
 "
trackable_dict_wrapper
0
ј0
Ј1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
п

љtotal

Љcount
њ	variables
Њ	keras_api"Ю
_tf_keras_metricѓ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 39}
═"
ћtrue_positives
Ћtrue_negatives
ќfalse_positives
Ќfalse_negatives
ў	variables
Ў	keras_api"н!
_tf_keras_metric╣!{"class_name": "AUC", "name": "auc", "dtype": "float32", "config": {"name": "auc", "dtype": "float32", "num_thresholds": 200, "curve": "ROC", "summation_method": "interpolation", "thresholds": [0.005025125628140704, 0.010050251256281407, 0.01507537688442211, 0.020100502512562814, 0.02512562814070352, 0.03015075376884422, 0.035175879396984924, 0.04020100502512563, 0.04522613065326633, 0.05025125628140704, 0.05527638190954774, 0.06030150753768844, 0.06532663316582915, 0.07035175879396985, 0.07537688442211055, 0.08040201005025126, 0.08542713567839195, 0.09045226130653267, 0.09547738693467336, 0.10050251256281408, 0.10552763819095477, 0.11055276381909548, 0.11557788944723618, 0.12060301507537688, 0.12562814070351758, 0.1306532663316583, 0.135678391959799, 0.1407035175879397, 0.1457286432160804, 0.1507537688442211, 0.15577889447236182, 0.16080402010050251, 0.1658291457286432, 0.1708542713567839, 0.17587939698492464, 0.18090452261306533, 0.18592964824120603, 0.19095477386934673, 0.19597989949748743, 0.20100502512562815, 0.20603015075376885, 0.21105527638190955, 0.21608040201005024, 0.22110552763819097, 0.22613065326633167, 0.23115577889447236, 0.23618090452261306, 0.24120603015075376, 0.24623115577889448, 0.25125628140703515, 0.2562814070351759, 0.2613065326633166, 0.2663316582914573, 0.271356783919598, 0.27638190954773867, 0.2814070351758794, 0.2864321608040201, 0.2914572864321608, 0.2964824120603015, 0.3015075376884422, 0.3065326633165829, 0.31155778894472363, 0.3165829145728643, 0.32160804020100503, 0.32663316582914576, 0.3316582914572864, 0.33668341708542715, 0.3417085427135678, 0.34673366834170855, 0.35175879396984927, 0.35678391959798994, 0.36180904522613067, 0.36683417085427134, 0.37185929648241206, 0.3768844221105528, 0.38190954773869346, 0.3869346733668342, 0.39195979899497485, 0.3969849246231156, 0.4020100502512563, 0.40703517587939697, 0.4120603015075377, 0.41708542713567837, 0.4221105527638191, 0.4271356783919598, 0.4321608040201005, 0.4371859296482412, 0.44221105527638194, 0.4472361809045226, 0.45226130653266333, 0.457286432160804, 0.4623115577889447, 0.46733668341708545, 0.4723618090452261, 0.47738693467336685, 0.4824120603015075, 0.48743718592964824, 0.49246231155778897, 0.49748743718592964, 0.5025125628140703, 0.507537688442211, 0.5125628140703518, 0.5175879396984925, 0.5226130653266332, 0.5276381909547738, 0.5326633165829145, 0.5376884422110553, 0.542713567839196, 0.5477386934673367, 0.5527638190954773, 0.5577889447236181, 0.5628140703517588, 0.5678391959798995, 0.5728643216080402, 0.5778894472361809, 0.5829145728643216, 0.5879396984924623, 0.592964824120603, 0.5979899497487438, 0.6030150753768844, 0.6080402010050251, 0.6130653266331658, 0.6180904522613065, 0.6231155778894473, 0.628140703517588, 0.6331658291457286, 0.6381909547738693, 0.6432160804020101, 0.6482412060301508, 0.6532663316582915, 0.6582914572864321, 0.6633165829145728, 0.6683417085427136, 0.6733668341708543, 0.678391959798995, 0.6834170854271356, 0.6884422110552764, 0.6934673366834171, 0.6984924623115578, 0.7035175879396985, 0.7085427135678392, 0.7135678391959799, 0.7185929648241206, 0.7236180904522613, 0.7286432160804021, 0.7336683417085427, 0.7386934673366834, 0.7437185929648241, 0.7487437185929648, 0.7537688442211056, 0.7587939698492462, 0.7638190954773869, 0.7688442211055276, 0.7738693467336684, 0.7788944723618091, 0.7839195979899497, 0.7889447236180904, 0.7939698492462312, 0.7989949748743719, 0.8040201005025126, 0.8090452261306532, 0.8140703517587939, 0.8190954773869347, 0.8241206030150754, 0.8291457286432161, 0.8341708542713567, 0.8391959798994975, 0.8442211055276382, 0.8492462311557789, 0.8542713567839196, 0.8592964824120602, 0.864321608040201, 0.8693467336683417, 0.8743718592964824, 0.8793969849246231, 0.8844221105527639, 0.8894472361809045, 0.8944723618090452, 0.8994974874371859, 0.9045226130653267, 0.9095477386934674, 0.914572864321608, 0.9195979899497487, 0.9246231155778895, 0.9296482412060302, 0.9346733668341709, 0.9396984924623115, 0.9447236180904522, 0.949748743718593, 0.9547738693467337, 0.9597989949748744, 0.964824120603015, 0.9698492462311558, 0.9748743718592965, 0.9798994974874372, 0.9849246231155779, 0.9899497487437185, 0.9949748743718593], "multi_label": false, "label_weights": null}, "shared_object_id": 27}
:  (2total
:  (2count
0
љ0
Љ1"
trackable_list_wrapper
.
њ	variables"
_generic_user_object
:╚ (2true_positives
:╚ (2true_negatives
 :╚ (2false_positives
 :╚ (2false_negatives
@
ћ0
Ћ1
ќ2
Ќ3"
trackable_list_wrapper
.
ў	variables"
_generic_user_object
/:- 2Adam/conv2d_15/kernel/m
!: 2Adam/conv2d_15/bias/m
/:- @2Adam/conv2d_16/kernel/m
!:@2Adam/conv2d_16/bias/m
0:.@ђ2Adam/conv2d_17/kernel/m
": ђ2Adam/conv2d_17/bias/m
1:/ђђ2Adam/conv2d_18/kernel/m
": ђ2Adam/conv2d_18/bias/m
1:/ђђ2Adam/conv2d_19/kernel/m
": ђ2Adam/conv2d_19/bias/m
&:$	ђb2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
/:- 2Adam/conv2d_15/kernel/v
!: 2Adam/conv2d_15/bias/v
/:- @2Adam/conv2d_16/kernel/v
!:@2Adam/conv2d_16/bias/v
0:.@ђ2Adam/conv2d_17/kernel/v
": ђ2Adam/conv2d_17/bias/v
1:/ђђ2Adam/conv2d_18/kernel/v
": ђ2Adam/conv2d_18/bias/v
1:/ђђ2Adam/conv2d_19/kernel/v
": ђ2Adam/conv2d_19/bias/v
&:$	ђb2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
Ж2у
'__inference_model_3_layer_call_fn_17588
'__inference_model_3_layer_call_fn_17936
'__inference_model_3_layer_call_fn_17965
'__inference_model_3_layer_call_fn_17784└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
о2М
B__inference_model_3_layer_call_and_return_conditional_losses_18021
B__inference_model_3_layer_call_and_return_conditional_losses_18077
B__inference_model_3_layer_call_and_return_conditional_losses_17827
B__inference_model_3_layer_call_and_return_conditional_losses_17870└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
У2т
 __inference__wrapped_model_17387└
І▓Є
FullArgSpec
argsџ 
varargsjargs
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *0б-
+і(
input_4         ┤┤
М2л
)__inference_conv2d_15_layer_call_fn_18086б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_15_layer_call_and_return_conditional_losses_18097б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_12_layer_call_fn_17399Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_17393Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_16_layer_call_fn_18106б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_16_layer_call_and_return_conditional_losses_18117б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_13_layer_call_fn_17411Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_17405Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_17_layer_call_fn_18126б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_17_layer_call_and_return_conditional_losses_18137б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_14_layer_call_fn_17423Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_17417Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_18_layer_call_fn_18146б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_18_layer_call_and_return_conditional_losses_18157б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ў2Ћ
0__inference_max_pooling2d_15_layer_call_fn_17435Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
│2░
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_17429Я
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *@б=
;і84                                    
М2л
)__inference_conv2d_19_layer_call_fn_18166б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_conv2d_19_layer_call_and_return_conditional_losses_18177б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_flatten_3_layer_call_fn_18182б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_flatten_3_layer_call_and_return_conditional_losses_18188б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Л2╬
'__inference_dense_3_layer_call_fn_18197б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
В2ж
B__inference_dense_3_layer_call_and_return_conditional_losses_18208б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
╩BК
#__inference_signature_wrapper_17907input_4"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 А
 __inference__wrapped_model_17387} )*34=>GH:б7
0б-
+і(
input_4         ┤┤
ф "1ф.
,
dense_3!і
dense_3         И
D__inference_conv2d_15_layer_call_and_return_conditional_losses_18097p9б6
/б,
*і'
inputs         ┤┤
ф "/б,
%і"
0         ▓▓ 
џ љ
)__inference_conv2d_15_layer_call_fn_18086c9б6
/б,
*і'
inputs         ┤┤
ф ""і         ▓▓ ┤
D__inference_conv2d_16_layer_call_and_return_conditional_losses_18117l 7б4
-б*
(і%
inputs         YY 
ф "-б*
#і 
0         WW@
џ ї
)__inference_conv2d_16_layer_call_fn_18106_ 7б4
-б*
(і%
inputs         YY 
ф " і         WW@х
D__inference_conv2d_17_layer_call_and_return_conditional_losses_18137m)*7б4
-б*
(і%
inputs         ++@
ф ".б+
$і!
0         ))ђ
џ Ї
)__inference_conv2d_17_layer_call_fn_18126`)*7б4
-б*
(і%
inputs         ++@
ф "!і         ))ђХ
D__inference_conv2d_18_layer_call_and_return_conditional_losses_18157n348б5
.б+
)і&
inputs         ђ
ф ".б+
$і!
0         ђ
џ ј
)__inference_conv2d_18_layer_call_fn_18146a348б5
.б+
)і&
inputs         ђ
ф "!і         ђХ
D__inference_conv2d_19_layer_call_and_return_conditional_losses_18177n=>8б5
.б+
)і&
inputs         		ђ
ф ".б+
$і!
0         ђ
џ ј
)__inference_conv2d_19_layer_call_fn_18166a=>8б5
.б+
)і&
inputs         		ђ
ф "!і         ђБ
B__inference_dense_3_layer_call_and_return_conditional_losses_18208]GH0б-
&б#
!і
inputs         ђb
ф "%б"
і
0         
џ {
'__inference_dense_3_layer_call_fn_18197PGH0б-
&б#
!і
inputs         ђb
ф "і         ф
D__inference_flatten_3_layer_call_and_return_conditional_losses_18188b8б5
.б+
)і&
inputs         ђ
ф "&б#
і
0         ђb
џ ѓ
)__inference_flatten_3_layer_call_fn_18182U8б5
.б+
)і&
inputs         ђ
ф "і         ђbЬ
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_17393ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_12_layer_call_fn_17399ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_17405ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_13_layer_call_fn_17411ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_17417ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_14_layer_call_fn_17423ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    Ь
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_17429ъRбO
HбE
Cі@
inputs4                                    
ф "HбE
>і;
04                                    
џ к
0__inference_max_pooling2d_15_layer_call_fn_17435ЉRбO
HбE
Cі@
inputs4                                    
ф ";і84                                    ┐
B__inference_model_3_layer_call_and_return_conditional_losses_17827y )*34=>GHBб?
8б5
+і(
input_4         ┤┤
p 

 
ф "%б"
і
0         
џ ┐
B__inference_model_3_layer_call_and_return_conditional_losses_17870y )*34=>GHBб?
8б5
+і(
input_4         ┤┤
p

 
ф "%б"
і
0         
џ Й
B__inference_model_3_layer_call_and_return_conditional_losses_18021x )*34=>GHAб>
7б4
*і'
inputs         ┤┤
p 

 
ф "%б"
і
0         
џ Й
B__inference_model_3_layer_call_and_return_conditional_losses_18077x )*34=>GHAб>
7б4
*і'
inputs         ┤┤
p

 
ф "%б"
і
0         
џ Ќ
'__inference_model_3_layer_call_fn_17588l )*34=>GHBб?
8б5
+і(
input_4         ┤┤
p 

 
ф "і         Ќ
'__inference_model_3_layer_call_fn_17784l )*34=>GHBб?
8б5
+і(
input_4         ┤┤
p

 
ф "і         ќ
'__inference_model_3_layer_call_fn_17936k )*34=>GHAб>
7б4
*і'
inputs         ┤┤
p 

 
ф "і         ќ
'__inference_model_3_layer_call_fn_17965k )*34=>GHAб>
7б4
*і'
inputs         ┤┤
p

 
ф "і         ░
#__inference_signature_wrapper_17907ѕ )*34=>GHEбB
б 
;ф8
6
input_4+і(
input_4         ┤┤"1ф.
,
dense_3!і
dense_3         