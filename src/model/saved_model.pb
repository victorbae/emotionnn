ц├
▓Х
:
Add
x"T
y"T
z"T"
Ttype:
2	
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
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
Ъ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.14.02unknown8АМ

global_step/Initializer/zerosConst*
value	B	 R *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
k
global_step
VariableV2*
shape: *
_class
loc:@global_step*
dtype0	*
_output_shapes
: 
Й
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
_output_shapes
: *
T0	
~
PlaceholderPlaceholder*
dtype0*/
_output_shapes
:         00*$
shape:         00
f
Reshape/shapeConst*%
valueB"    0   0      *
dtype0*
_output_shapes
:
h
ReshapeReshapePlaceholderReshape/shape*
T0*/
_output_shapes
:         00
й
.conv2d/kernel/Initializer/random_uniform/shapeConst*%
valueB"             * 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
:
У
,conv2d/kernel/Initializer/random_uniform/minConst*
valueB
 *nзо╜* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *nзо=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
╫
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel*
dtype0
╥
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
ь
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
▐
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min* 
_class
loc:@conv2d/kernel*&
_output_shapes
: *
T0
П
conv2d/kernel
VariableV2* 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: *
shape: 
к
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
А
conv2d/kernel/readIdentityconv2d/kernel*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
s
conv2d/bias
VariableV2*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: *
shape: 
Н
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Ц
conv2d/Conv2DConv2DReshapeconv2d/kernel/read*/
_output_shapes
:         00 *
paddingSAME*
T0*
strides

t
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*/
_output_shapes
:         00 
]
conv2d/ReluReluconv2d/BiasAdd*
T0*/
_output_shapes
:         00 
Ъ
max_pooling2d/MaxPoolMaxPoolconv2d/Relu*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides

н
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"          @   *"
_class
loc:@conv2d_1/kernel*
dtype0
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
valueB
 *═╠L╜*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *═╠L=*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
▌
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @
┌
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_1/kernel
Ї
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
ц
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
У
conv2d_1/kernel
VariableV2*"
_class
loc:@conv2d_1/kernel*
dtype0*&
_output_shapes
: @*
shape: @
▓
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
О
conv2d_1/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_1/bias
w
conv2d_1/bias
VariableV2*
_output_shapes
:@*
shape:@* 
_class
loc:@conv2d_1/bias*
dtype0
Х
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:@
t
conv2d_1/bias/readIdentityconv2d_1/bias*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_1/bias
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
и
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPoolconv2d_1/kernel/read*
paddingSAME*
T0*
strides
*/
_output_shapes
:         @
z
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*/
_output_shapes
:         @
a
conv2d_1/ReluReluconv2d_1/BiasAdd*
T0*/
_output_shapes
:         @
Ю
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu*
ksize
*
paddingVALID*
strides
*/
_output_shapes
:         @
o
dropout/IdentityIdentitymax_pooling2d_1/MaxPool*
T0*/
_output_shapes
:         @
н
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*%
valueB"      @   А   *"
_class
loc:@conv2d_2/kernel*
dtype0
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *├╨╜*"
_class
loc:@conv2d_2/kernel*
dtype0
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *├╨=*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
▐
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_2/kernel*
dtype0*'
_output_shapes
:@А
┌
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*"
_class
loc:@conv2d_2/kernel
ї
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@А
ч
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@А
Х
conv2d_2/kernel
VariableV2*
shape:@А*"
_class
loc:@conv2d_2/kernel*
dtype0*'
_output_shapes
:@А
│
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@А
З
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@А
Р
conv2d_2/bias/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes	
:А
y
conv2d_2/bias
VariableV2* 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes	
:А*
shape:А
Ц
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:А
u
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:А
g
conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
д
conv2d_2/Conv2DConv2Ddropout/Identityconv2d_2/kernel/read*
paddingSAME*
T0*
strides
*0
_output_shapes
:         А
{
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*0
_output_shapes
:         А
b
conv2d_2/ReluReluconv2d_2/BiasAdd*
T0*0
_output_shapes
:         А
Я
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu*
ksize
*
paddingVALID*
strides
*0
_output_shapes
:         А
r
dropout_1/IdentityIdentitymax_pooling2d_2/MaxPool*
T0*0
_output_shapes
:         А
н
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А      *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *═╠╠╝*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *═╠╠<*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
▀
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*
T0*"
_class
loc:@conv2d_3/kernel
┌
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Ў
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:АА
ш
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:АА
Ч
conv2d_3/kernel
VariableV2*"
_class
loc:@conv2d_3/kernel*
dtype0*(
_output_shapes
:АА*
shape:АА
┤
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*(
_output_shapes
:АА*
T0*"
_class
loc:@conv2d_3/kernel
И
conv2d_3/kernel/readIdentityconv2d_3/kernel*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:АА*
T0
Р
conv2d_3/bias/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:А
y
conv2d_3/bias
VariableV2*
shape:А* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:А
Ц
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:А
u
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:А
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ж
conv2d_3/Conv2DConv2Ddropout_1/Identityconv2d_3/kernel/read*
strides
*0
_output_shapes
:         А*
paddingSAME*
T0
{
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*0
_output_shapes
:         А*
T0
b
conv2d_3/ReluReluconv2d_3/BiasAdd*0
_output_shapes
:         А*
T0
Я
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu*
paddingVALID*
strides
*0
_output_shapes
:         А*
ksize

r
dropout_2/IdentityIdentitymax_pooling2d_3/MaxPool*0
_output_shapes
:         А*
T0
O
flatten/ShapeShapedropout_2/Identity*
_output_shapes
:*
T0
e
flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
g
flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
g
flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╒
flatten/strided_sliceStridedSliceflatten/Shapeflatten/strided_slice/stackflatten/strided_slice/stack_1flatten/strided_slice/stack_2*
shrink_axis_mask*
Index0*
T0*
_output_shapes
: 
b
flatten/Reshape/shape/1Const*
valueB :
         *
dtype0*
_output_shapes
: 
{
flatten/Reshape/shapePackflatten/strided_sliceflatten/Reshape/shape/1*
T0*
N*
_output_shapes
:
x
flatten/ReshapeReshapedropout_2/Identityflatten/Reshape/shape*(
_output_shapes
:         А*
T0
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB" 	     *
_class
loc:@dense/kernel*
dtype0*
_output_shapes
:
С
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *°KF╜*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
С
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *°KF=*
_class
loc:@dense/kernel*
dtype0*
_output_shapes
: 
╬
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
АА
╬
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
т
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
╘
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
Б
dense/kernel
VariableV2*
shape:
АА*
_class
loc:@dense/kernel*
dtype0* 
_output_shapes
:
АА
а
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform* 
_output_shapes
:
АА*
T0*
_class
loc:@dense/kernel
w
dense/kernel/readIdentitydense/kernel* 
_output_shapes
:
АА*
T0*
_class
loc:@dense/kernel
К
dense/bias/Initializer/zerosConst*
valueBА*    *
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А
s

dense/bias
VariableV2*
_class
loc:@dense/bias*
dtype0*
_output_shapes	
:А*
shape:А
К
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
l
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias*
_output_shapes	
:А
m
dense/MatMulMatMulflatten/Reshapedense/kernel/read*(
_output_shapes
:         А*
T0
j
dense/BiasAddBiasAdddense/MatMuldense/bias/read*(
_output_shapes
:         А*
T0
T

dense/ReluReludense/BiasAdd*
T0*(
_output_shapes
:         А
]
dropout_3/IdentityIdentity
dense/Relu*(
_output_shapes
:         А*
T0
г
/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"   А   *!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
:
Х
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *   ╛*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
Х
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *   >*!
_class
loc:@dense_1/kernel*
dtype0*
_output_shapes
: 
╘
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_1/kernel*
dtype0* 
_output_shapes
:
АА*
T0
╓
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
ъ
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
▄
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
Е
dense_1/kernel
VariableV2*!
_class
loc:@dense_1/kernel*
dtype0* 
_output_shapes
:
АА*
shape:
АА
и
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel
}
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel* 
_output_shapes
:
АА
О
dense_1/bias/Initializer/zerosConst*
_output_shapes	
:А*
valueBА*    *
_class
loc:@dense_1/bias*
dtype0
w
dense_1/bias
VariableV2*
_class
loc:@dense_1/bias*
dtype0*
_output_shapes	
:А*
shape:А
Т
dense_1/bias/AssignAssigndense_1/biasdense_1/bias/Initializer/zeros*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
_output_shapes	
:А*
T0
t
dense_1/MatMulMatMuldropout_3/Identitydense_1/kernel/read*
T0*(
_output_shapes
:         А
p
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:         А*
T0
X
dense_1/ReluReludense_1/BiasAdd*(
_output_shapes
:         А*
T0
_
dropout_4/IdentityIdentitydense_1/Relu*(
_output_shapes
:         А*
T0
г
/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"А   @   *!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:
Х
-dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *є5╛*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
Х
-dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *є5>*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
: 
╙
7dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_2/kernel/Initializer/random_uniform/shape*!
_class
loc:@dense_2/kernel*
dtype0*
_output_shapes
:	А@*
T0
╓
-dense_2/kernel/Initializer/random_uniform/subSub-dense_2/kernel/Initializer/random_uniform/max-dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_2/kernel
щ
-dense_2/kernel/Initializer/random_uniform/mulMul7dense_2/kernel/Initializer/random_uniform/RandomUniform-dense_2/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
█
)dense_2/kernel/Initializer/random_uniformAdd-dense_2/kernel/Initializer/random_uniform/mul-dense_2/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
Г
dense_2/kernel
VariableV2*
dtype0*
_output_shapes
:	А@*
shape:	А@*!
_class
loc:@dense_2/kernel
з
dense_2/kernel/AssignAssigndense_2/kernel)dense_2/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
|
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@
М
dense_2/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:@
u
dense_2/bias
VariableV2*
_class
loc:@dense_2/bias*
dtype0*
_output_shapes
:@*
shape:@
С
dense_2/bias/AssignAssigndense_2/biasdense_2/bias/Initializer/zeros*
_class
loc:@dense_2/bias*
_output_shapes
:@*
T0
q
dense_2/bias/readIdentitydense_2/bias*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
s
dense_2/MatMulMatMuldropout_4/Identitydense_2/kernel/read*'
_output_shapes
:         @*
T0
o
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*
T0*'
_output_shapes
:         @
W
dense_2/ReluReludense_2/BiasAdd*
T0*'
_output_shapes
:         @
^
dropout_5/IdentityIdentitydense_2/Relu*
T0*'
_output_shapes
:         @
г
/dense_3/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"@       *!
_class
loc:@dense_3/kernel*
dtype0
Х
-dense_3/kernel/Initializer/random_uniform/minConst*
valueB
 *  А╛*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
Х
-dense_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *  А>*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes
: 
╥
7dense_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_3/kernel/Initializer/random_uniform/shape*
T0*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:@ 
╓
-dense_3/kernel/Initializer/random_uniform/subSub-dense_3/kernel/Initializer/random_uniform/max-dense_3/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@dense_3/kernel
ш
-dense_3/kernel/Initializer/random_uniform/mulMul7dense_3/kernel/Initializer/random_uniform/RandomUniform-dense_3/kernel/Initializer/random_uniform/sub*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ *
T0
┌
)dense_3/kernel/Initializer/random_uniformAdd-dense_3/kernel/Initializer/random_uniform/mul-dense_3/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ 
Б
dense_3/kernel
VariableV2*
shape
:@ *!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:@ 
ж
dense_3/kernel/AssignAssigndense_3/kernel)dense_3/kernel/Initializer/random_uniform*
T0*!
_class
loc:@dense_3/kernel*
_output_shapes

:@ 
{
dense_3/kernel/readIdentitydense_3/kernel*
_output_shapes

:@ *
T0*!
_class
loc:@dense_3/kernel
М
dense_3/bias/Initializer/zerosConst*
valueB *    *
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
: 
u
dense_3/bias
VariableV2*
_output_shapes
: *
shape: *
_class
loc:@dense_3/bias*
dtype0
С
dense_3/bias/AssignAssigndense_3/biasdense_3/bias/Initializer/zeros*
T0*
_class
loc:@dense_3/bias*
_output_shapes
: 
q
dense_3/bias/readIdentitydense_3/bias*
T0*
_class
loc:@dense_3/bias*
_output_shapes
: 
s
dense_3/MatMulMatMuldropout_5/Identitydense_3/kernel/read*'
_output_shapes
:          *
T0
o
dense_3/BiasAddBiasAdddense_3/MatMuldense_3/bias/read*'
_output_shapes
:          *
T0
W
dense_3/ReluReludense_3/BiasAdd*
T0*'
_output_shapes
:          
^
dropout_6/IdentityIdentitydense_3/Relu*'
_output_shapes
:          *
T0
г
/dense_4/kernel/Initializer/random_uniform/shapeConst*
valueB"       *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
:
Х
-dense_4/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *л╥╚╛*!
_class
loc:@dense_4/kernel
Х
-dense_4/kernel/Initializer/random_uniform/maxConst*
valueB
 *л╥╚>*!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes
: 
╥
7dense_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_4/kernel/Initializer/random_uniform/shape*
_output_shapes

: *
T0*!
_class
loc:@dense_4/kernel*
dtype0
╓
-dense_4/kernel/Initializer/random_uniform/subSub-dense_4/kernel/Initializer/random_uniform/max-dense_4/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes
: 
ш
-dense_4/kernel/Initializer/random_uniform/mulMul7dense_4/kernel/Initializer/random_uniform/RandomUniform-dense_4/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: 
┌
)dense_4/kernel/Initializer/random_uniformAdd-dense_4/kernel/Initializer/random_uniform/mul-dense_4/kernel/Initializer/random_uniform/min*!
_class
loc:@dense_4/kernel*
_output_shapes

: *
T0
Б
dense_4/kernel
VariableV2*
shape
: *!
_class
loc:@dense_4/kernel*
dtype0*
_output_shapes

: 
ж
dense_4/kernel/AssignAssigndense_4/kernel)dense_4/kernel/Initializer/random_uniform*
_output_shapes

: *
T0*!
_class
loc:@dense_4/kernel
{
dense_4/kernel/readIdentitydense_4/kernel*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: 
М
dense_4/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@dense_4/bias
u
dense_4/bias
VariableV2*
_class
loc:@dense_4/bias*
dtype0*
_output_shapes
:*
shape:
С
dense_4/bias/AssignAssigndense_4/biasdense_4/bias/Initializer/zeros*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:
q
dense_4/bias/readIdentitydense_4/bias*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:
s
dense_4/MatMulMatMuldropout_6/Identitydense_4/kernel/read*
T0*'
_output_shapes
:         
o
dense_4/BiasAddBiasAdddense_4/MatMuldense_4/bias/read*'
_output_shapes
:         *
T0
R
ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
a
ArgMaxArgMaxdense_4/BiasAddArgMax/dimension*#
_output_shapes
:         *
T0
\
softmax_tensorSoftmaxdense_4/BiasAdd*
T0*'
_output_shapes
:         

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_d54cd6ab3ce04d30b2fed1cebc953fc8/part*
dtype0*
_output_shapes
: 
d
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
М
save/SaveV2/tensor_namesConst"/device:CPU:0*░
valueжBгBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step*
dtype0*
_output_shapes
:
Ш
save/SaveV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
░
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv2d/biasconv2d/kernelconv2d_1/biasconv2d_1/kernelconv2d_2/biasconv2d_2/kernelconv2d_3/biasconv2d_3/kernel
dense/biasdense/kerneldense_1/biasdense_1/kerneldense_2/biasdense_2/kerneldense_3/biasdense_3/kerneldense_4/biasdense_4/kernelglobal_step"/device:CPU:0*!
dtypes
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
а
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0
u
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
П
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*░
valueжBгBconv2d/biasBconv2d/kernelBconv2d_1/biasBconv2d_1/kernelBconv2d_2/biasBconv2d_2/kernelBconv2d_3/biasBconv2d_3/kernelB
dense/biasBdense/kernelBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBdense_3/biasBdense_3/kernelBdense_4/biasBdense_4/kernelBglobal_step
Ы
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
∙
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2	*`
_output_shapesN
L:::::::::::::::::::
w
save/AssignAssignconv2d/biassave/RestoreV2*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Л
save/Assign_1Assignconv2d/kernelsave/RestoreV2:1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 

save/Assign_2Assignconv2d_1/biassave/RestoreV2:2*
_output_shapes
:@*
T0* 
_class
loc:@conv2d_1/bias
П
save/Assign_3Assignconv2d_1/kernelsave/RestoreV2:3*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: @
А
save/Assign_4Assignconv2d_2/biassave/RestoreV2:4*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes	
:А
Р
save/Assign_5Assignconv2d_2/kernelsave/RestoreV2:5*"
_class
loc:@conv2d_2/kernel*'
_output_shapes
:@А*
T0
А
save/Assign_6Assignconv2d_3/biassave/RestoreV2:6*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:А
С
save/Assign_7Assignconv2d_3/kernelsave/RestoreV2:7*"
_class
loc:@conv2d_3/kernel*(
_output_shapes
:АА*
T0
z
save/Assign_8Assign
dense/biassave/RestoreV2:8*
_output_shapes	
:А*
T0*
_class
loc:@dense/bias
Г
save/Assign_9Assigndense/kernelsave/RestoreV2:9*
T0*
_class
loc:@dense/kernel* 
_output_shapes
:
АА
А
save/Assign_10Assigndense_1/biassave/RestoreV2:10*
T0*
_class
loc:@dense_1/bias*
_output_shapes	
:А
Й
save/Assign_11Assigndense_1/kernelsave/RestoreV2:11* 
_output_shapes
:
АА*
T0*!
_class
loc:@dense_1/kernel

save/Assign_12Assigndense_2/biassave/RestoreV2:12*
T0*
_class
loc:@dense_2/bias*
_output_shapes
:@
И
save/Assign_13Assigndense_2/kernelsave/RestoreV2:13*!
_class
loc:@dense_2/kernel*
_output_shapes
:	А@*
T0

save/Assign_14Assigndense_3/biassave/RestoreV2:14*
_output_shapes
: *
T0*
_class
loc:@dense_3/bias
З
save/Assign_15Assigndense_3/kernelsave/RestoreV2:15*
_output_shapes

:@ *
T0*!
_class
loc:@dense_3/kernel

save/Assign_16Assigndense_4/biassave/RestoreV2:16*
T0*
_class
loc:@dense_4/bias*
_output_shapes
:
З
save/Assign_17Assigndense_4/kernelsave/RestoreV2:17*
T0*!
_class
loc:@dense_4/kernel*
_output_shapes

: 
y
save/Assign_18Assignglobal_stepsave/RestoreV2:18*
_output_shapes
: *
T0	*
_class
loc:@global_step
╤
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"╞
	variables╕╡
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08"%
saved_model_main_op


group_deps"Ї
trainable_variables▄┘
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
g
dense/kernel:0dense/kernel/Assigndense/kernel/read:02)dense/kernel/Initializer/random_uniform:08
V
dense/bias:0dense/bias/Assigndense/bias/read:02dense/bias/Initializer/zeros:08
o
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02+dense_1/kernel/Initializer/random_uniform:08
^
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02 dense_1/bias/Initializer/zeros:08
o
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02+dense_2/kernel/Initializer/random_uniform:08
^
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02 dense_2/bias/Initializer/zeros:08
o
dense_3/kernel:0dense_3/kernel/Assigndense_3/kernel/read:02+dense_3/kernel/Initializer/random_uniform:08
^
dense_3/bias:0dense_3/bias/Assigndense_3/bias/read:02 dense_3/bias/Initializer/zeros:08
o
dense_4/kernel:0dense_4/kernel/Assigndense_4/kernel/read:02+dense_4/kernel/Initializer/random_uniform:08
^
dense_4/bias:0dense_4/bias/Assigndense_4/bias/read:02 dense_4/bias/Initializer/zeros:08*Ц
serving_defaultВ
1
X,
Placeholder:0         001
output'
softmax_tensor:0         tensorflow/serving/predict