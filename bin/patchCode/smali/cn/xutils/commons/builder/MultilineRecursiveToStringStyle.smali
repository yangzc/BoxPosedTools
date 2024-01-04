.class public Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;
.super Lcn/xutils/commons/builder/RecursiveToStringStyle;
.source "MultilineRecursiveToStringStyle.java"


# static fields
.field private static final INDENT:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private spaces:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Lcn/xutils/commons/builder/RecursiveToStringStyle;-><init>()V

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 82
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 83
    return-void
.end method

.method private resetIndent()V
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setArrayStart(Ljava/lang/String;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v2}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setArraySeparator(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v2, v2, -0x2

    invoke-direct {p0, v2}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setArrayEnd(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v2}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setContentStart(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    invoke-direct {p0, v1}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setFieldSeparator(Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v1, v1, -0x2

    invoke-direct {p0, v1}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spacer(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->setContentEnd(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private spacer(I)Ljava/lang/StringBuilder;
    .locals 3
    .param p1, "spaces"    # I

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 108
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .line 115
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPrimitiveWrapper(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->accept(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 118
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 119
    invoke-static {p3, p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 121
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    goto :goto_0

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [B

    .line 174
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 175
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 177
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 178
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 179
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [C

    .line 183
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 184
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 186
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 187
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 188
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [D

    .line 192
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 193
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 194
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 195
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 196
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 197
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [F

    .line 201
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 202
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 203
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 204
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 205
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 206
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [I

    .line 156
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 157
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 158
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 159
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 160
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 161
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [J

    .line 147
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 148
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 149
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 150
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 151
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 152
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Ljava/lang/Object;

    .line 129
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 130
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 133
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 134
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [S

    .line 165
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 166
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 167
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 168
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 169
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 170
    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # [Z

    .line 210
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 211
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 212
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 213
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 214
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 215
    return-void
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "array"    # Ljava/lang/Object;

    .line 138
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 139
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 140
    invoke-super {p0, p1, p2, p3}, Lcn/xutils/commons/builder/RecursiveToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->spaces:I

    .line 142
    invoke-direct {p0}, Lcn/xutils/commons/builder/MultilineRecursiveToStringStyle;->resetIndent()V

    .line 143
    return-void
.end method
