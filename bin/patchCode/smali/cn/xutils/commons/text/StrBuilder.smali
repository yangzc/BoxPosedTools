.class public Lcn/xutils/commons/text/StrBuilder;
.super Ljava/lang/Object;
.source "StrBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;
.implements Ljava/io/Serializable;
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;,
        Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;,
        Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Appendable;",
        "Ljava/io/Serializable;",
        "Lcn/xutils/commons/builder/Builder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcn/xutils/commons/text/StrBuilder;-><init>(I)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-gtz p1, :cond_0

    .line 121
    const/16 p1, 0x20

    .line 123
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 134
    new-array v0, v0, [C

    iput-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 137
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 139
    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "len"    # I

    .line 1796
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1797
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1798
    return-void
.end method

.method private replaceImpl(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;
    .locals 10
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "from"    # I
    .param p4, "to"    # I
    .param p5, "replaceCount"    # I

    .line 2115
    if-eqz p1, :cond_4

    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 2118
    :cond_0
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2119
    .local v0, "replaceLen":I
    move v1, p3

    move v7, v1

    .local v7, "i":I
    :goto_0
    if-ge v7, p4, :cond_3

    if-eqz p5, :cond_3

    .line 2120
    iget-object v8, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2121
    .local v8, "buf":[C
    invoke-virtual {p1, v8, v7, p3, p4}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 2122
    .local v9, "removeLen":I
    if-lez v9, :cond_2

    .line 2123
    add-int v3, v7, v9

    move-object v1, p0

    move v2, v7

    move v4, v9

    move-object v5, p2

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/xutils/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2124
    sub-int v1, p4, v9

    add-int/2addr v1, v0

    .line 2125
    .end local p4    # "to":I
    .local v1, "to":I
    add-int p4, v7, v0

    add-int/lit8 v7, p4, -0x1

    .line 2126
    if-lez p5, :cond_1

    .line 2127
    add-int/lit8 p5, p5, -0x1

    move p4, v1

    goto :goto_1

    .line 2126
    :cond_1
    move p4, v1

    .line 2119
    .end local v1    # "to":I
    .end local v8    # "buf":[C
    .end local v9    # "removeLen":I
    .restart local p4    # "to":I
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2131
    .end local v7    # "i":I
    :cond_3
    return-object p0

    .line 2116
    .end local v0    # "replaceLen":I
    :cond_4
    :goto_2
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "removeLen"    # I
    .param p4, "insertStr"    # Ljava/lang/String;
    .param p5, "insertLen"    # I

    .line 1933
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    .line 1934
    .local v0, "newSize":I
    if-eq p5, p3, :cond_0

    .line 1935
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1936
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, p5

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1937
    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1939
    :cond_0
    if-lez p5, :cond_1

    .line 1940
    const/4 v1, 0x0

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, v1, p5, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1942
    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "ch"    # C

    .line 923
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 924
    .local v0, "len":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 925
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    aput-char p1, v1, v2

    .line 926
    return-object p0
.end method

.method public append(D)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 966
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 956
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(I)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 936
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(J)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 946
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Lcn/xutils/commons/text/StrBuilder;)Lcn/xutils/commons/text/StrBuilder;
    .locals 5
    .param p1, "str"    # Lcn/xutils/commons/text/StrBuilder;

    .line 801
    if-nez p1, :cond_0

    .line 802
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 804
    :cond_0
    invoke-virtual {p1}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 805
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 806
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 807
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 808
    iget-object v2, p1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 811
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Lcn/xutils/commons/text/StrBuilder;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 824
    if-nez p1, :cond_0

    .line 825
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 827
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 830
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 833
    if-lez p3, :cond_1

    .line 834
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 835
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 836
    add-int v1, p2, p3

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Lcn/xutils/commons/text/StrBuilder;->getChars(II[CI)V

    .line 837
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 839
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 831
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 828
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/CharSequence;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .line 538
    if-nez p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 541
    :cond_0
    instance-of v0, p1, Lcn/xutils/commons/text/StrBuilder;

    if-eqz v0, :cond_1

    .line 542
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Lcn/xutils/commons/text/StrBuilder;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 545
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 547
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 548
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 550
    :cond_3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    .line 551
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/nio/CharBuffer;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 553
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 568
    if-nez p1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 571
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 519
    if-nez p1, :cond_0

    .line 520
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 522
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 523
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 525
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 582
    if-nez p1, :cond_0

    .line 583
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 586
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 587
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 588
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 589
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 590
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 592
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 606
    if-nez p1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 609
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 612
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 615
    if-lez p3, :cond_1

    .line 616
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 617
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 618
    add-int v1, p2, p3

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 619
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 621
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 613
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 634
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/StringBuffer;)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 701
    if-nez p1, :cond_0

    .line 702
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 705
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 706
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 707
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 708
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 709
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 711
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 724
    if-nez p1, :cond_0

    .line 725
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 727
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 730
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 733
    if-lez p3, :cond_1

    .line 734
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 735
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 736
    add-int v1, p2, p3

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 737
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 739
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 731
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 728
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/lang/StringBuilder;)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 754
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 755
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 756
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 757
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 758
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 759
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 761
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 775
    if-nez p1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 778
    :cond_0
    if-ltz p2, :cond_3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    .line 781
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 784
    if-lez p3, :cond_1

    .line 785
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 786
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 787
    add-int v1, p2, p3

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 788
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 790
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 782
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "length must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "startIndex must be valid"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Ljava/nio/CharBuffer;)Lcn/xutils/commons/text/StrBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;

    .line 646
    if-nez p1, :cond_0

    .line 647
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 649
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 651
    .local v0, "length":I
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 652
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 653
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 654
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 655
    .end local v0    # "length":I
    .end local v1    # "len":I
    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 658
    :goto_0
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 5
    .param p1, "buf"    # Ljava/nio/CharBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 672
    if-nez p1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 675
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 677
    .local v0, "totalLength":I
    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    .line 680
    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    .line 683
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 684
    .local v1, "len":I
    add-int v2, v1, p3

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 685
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, v4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 686
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p3

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 687
    .end local v0    # "totalLength":I
    .end local v1    # "len":I
    goto :goto_0

    .line 681
    .restart local v0    # "totalLength":I
    :cond_1
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "length must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_2
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v2, "startIndex must be valid"

    invoke-direct {v1, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 688
    .end local v0    # "totalLength":I
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;

    .line 690
    :goto_0
    return-object p0
.end method

.method public append(Z)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "value"    # Z

    .line 898
    if-eqz p1, :cond_0

    .line 899
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 900
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v3, 0x74

    aput-char v3, v0, v1

    .line 901
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v3, 0x72

    aput-char v3, v0, v2

    .line 902
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, v0, v1

    goto :goto_0

    .line 904
    :cond_0
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 905
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v3, 0x66

    aput-char v3, v0, v1

    .line 906
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v3, 0x61

    aput-char v3, v0, v2

    .line 907
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v3, 0x6c

    aput-char v3, v0, v1

    .line 908
    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v1, 0x73

    aput-char v1, v0, v2

    .line 910
    :goto_0
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/16 v2, 0x65

    aput-char v2, v0, v1

    .line 911
    return-object p0
.end method

.method public append([C)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "chars"    # [C

    .line 850
    if-nez p1, :cond_0

    .line 851
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 853
    :cond_0
    array-length v0, p1

    .line 854
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 855
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    .line 856
    .local v1, "len":I
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 857
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 860
    .end local v1    # "len":I
    :cond_1
    return-object p0
.end method

.method public append([CII)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 873
    if-nez p1, :cond_0

    .line 874
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->appendNull()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 876
    :cond_0
    if-ltz p2, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    .line 879
    if-ltz p3, :cond_2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 882
    if-lez p3, :cond_1

    .line 883
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 884
    .local v0, "len":I
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 885
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 886
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, p3

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 888
    .end local v0    # "len":I
    :cond_1
    return-object p0

    .line 880
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid startIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendAll(Ljava/lang/Iterable;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcn/xutils/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1225
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_0

    .line 1226
    new-instance v0, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/text/StrBuilder;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 1228
    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lcn/xutils/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1241
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_0

    .line 1242
    new-instance v0, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrBuilder$$ExternalSyntheticLambda0;-><init>(Lcn/xutils/commons/text/StrBuilder;)V

    invoke-interface {p1, v0}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 1244
    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcn/xutils/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1207
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1209
    .local v2, "element":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    .line 1208
    .end local v2    # "element":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1212
    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1543
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1511
    if-lez p2, :cond_4

    .line 1512
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1513
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1515
    const-string v0, ""

    .line 1517
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1518
    .local v1, "strLen":I
    if-lt v1, p2, :cond_2

    .line 1519
    sub-int v2, v1, p2

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1521
    :cond_2
    sub-int v2, p2, v1

    .line 1522
    .local v2, "padLen":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1523
    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    .line 1522
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1525
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1527
    .end local v2    # "padLen":I
    :goto_2
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1529
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1590
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "width"    # I
    .param p3, "padChar"    # C

    .line 1558
    if-lez p2, :cond_4

    .line 1559
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1560
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1561
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_1

    .line 1562
    const-string v0, ""

    .line 1564
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1565
    .local v1, "strLen":I
    const/4 v2, 0x0

    if-lt v1, p2, :cond_2

    .line 1566
    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, p2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    .line 1568
    :cond_2
    sub-int v3, p2, v1

    .line 1569
    .local v3, "padLen":I
    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1570
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 1571
    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v5, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v5, v1

    add-int/2addr v5, v2

    aput-char p3, v4, v5

    .line 1570
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1574
    .end local v2    # "i":I
    .end local v3    # "padLen":I
    :cond_3
    :goto_2
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1576
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "strLen":I
    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lcn/xutils/commons/text/StrBuilder;
    .locals 1

    .line 492
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 493
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 494
    return-object p0

    .line 496
    :cond_0
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lcn/xutils/commons/text/StrBuilder;
    .locals 1

    .line 505
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 506
    return-object p0

    .line 508
    :cond_0
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I
    .param p2, "padChar"    # C

    .line 1490
    if-ltz p1, :cond_0

    .line 1491
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1493
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    .line 1492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1496
    .end local v0    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # C

    .line 1400
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    .line 1403
    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # C
    .param p2, "defaultIfEmpty"    # C

    .line 1418
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    goto :goto_0

    .line 1421
    :cond_0
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    .line 1423
    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lcn/xutils/commons/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # C
    .param p2, "loopIndex"    # I

    .line 1476
    if-lez p2, :cond_0

    .line 1477
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    .line 1479
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 1340
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendSeparator(Ljava/lang/String;I)Lcn/xutils/commons/text/StrBuilder;
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "loopIndex"    # I

    .line 1448
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1449
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 1451
    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "standard"    # Ljava/lang/String;
    .param p2, "defaultIfEmpty"    # Ljava/lang/String;

    .line 1372
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1373
    .local v0, "str":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 1374
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 1376
    :cond_1
    return-object p0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2718
    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2719
    move-object v0, p1

    check-cast v0, Ljava/io/Writer;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2720
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 2721
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2722
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 2723
    move-object v0, p1

    check-cast v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2724
    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    .line 2725
    move-object v0, p1

    check-cast v0, Ljava/nio/CharBuffer;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v2, v1, v3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 2727
    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 2729
    :goto_0
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcn/xutils/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1280
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p1, :cond_1

    .line 1281
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1282
    .local v0, "sep":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1283
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    .line 1285
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    goto :goto_0

    .line 1290
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 2
    .param p2, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcn/xutils/commons/text/StrBuilder;"
        }
    .end annotation

    .line 1304
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_1

    .line 1305
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1306
    .local v0, "sep":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1307
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    .line 1308
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1309
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    goto :goto_0

    .line 1313
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "separator"    # Ljava/lang/String;

    .line 1258
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 1259
    const-string v0, ""

    invoke-static {p2, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "sep":Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    .line 1261
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1262
    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    .line 1263
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    .line 1261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1266
    .end local v0    # "sep":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-object p0
.end method

.method public appendln(C)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "ch"    # C

    .line 1143
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(D)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # D

    .line 1187
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->append(D)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(F)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # F

    .line 1176
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(F)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(I)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # I

    .line 1154
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(I)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(J)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # J

    .line 1165
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->append(J)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lcn/xutils/commons/text/StrBuilder;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lcn/xutils/commons/text/StrBuilder;

    .line 1081
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Lcn/xutils/commons/text/StrBuilder;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Lcn/xutils/commons/text/StrBuilder;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Lcn/xutils/commons/text/StrBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1095
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Lcn/xutils/commons/text/StrBuilder;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 978
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 990
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1004
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objs"    # [Ljava/lang/Object;

    .line 1017
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;

    .line 1029
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuffer;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1069
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;

    .line 1041
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1055
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln(Z)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "value"    # Z

    .line 1132
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append(Z)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([C)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C

    .line 1107
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->append([C)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendln([CII)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "chars"    # [C
    .param p2, "startIndex"    # I
    .param p3, "length"    # I

    .line 1121
    invoke-virtual {p0, p1, p2, p3}, Lcn/xutils/commons/text/StrBuilder;->append([CII)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrBuilder;->appendNewLine()Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 2673
    new-instance v0, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrBuilder$StrBuilderReader;-><init>(Lcn/xutils/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 2646
    new-instance v0, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrBuilder$StrBuilderTokenizer;-><init>(Lcn/xutils/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 2701
    new-instance v0, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lcn/xutils/commons/text/StrBuilder$StrBuilderWriter;-><init>(Lcn/xutils/commons/text/StrBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 2855
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 326
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v0, v0, p1

    return v0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lcn/xutils/commons/text/StrBuilder;
    .locals 1

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 312
    return-object p0
.end method

.method public contains(C)Z
    .locals 3
    .param p1, "ch"    # C

    .line 2370
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2371
    .local v0, "thisBuf":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 2372
    aget-char v2, v0, v1

    if-ne v2, p1, :cond_0

    .line 2373
    const/4 v2, 0x1

    return v2

    .line 2371
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2376
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Lcn/xutils/commons/text/StrMatcher;)Z
    .locals 2
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 2402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Lcn/xutils/commons/text/StrMatcher;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .line 2386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 1810
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1811
    sub-int v0, p2, p1

    .line 1812
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1813
    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1815
    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1825
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1826
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 1827
    move v1, v0

    .line 1828
    .local v1, "start":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v2, :cond_1

    .line 1829
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v0

    if-eq v2, p1, :cond_0

    .line 1830
    nop

    .line 1833
    :cond_1
    sub-int v2, v0, v1

    .line 1834
    .local v2, "len":I
    invoke-direct {p0, v1, v0, v2}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1835
    sub-int/2addr v0, v2

    .line 1825
    .end local v1    # "start":I
    .end local v2    # "len":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1838
    .end local v0    # "i":I
    :cond_3
    return-object p0
.end method

.method public deleteAll(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1904
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replace(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteAll(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1864
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1865
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1866
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1867
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1868
    add-int v2, v1, v0

    invoke-direct {p0, v1, v2, v0}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1869
    invoke-virtual {p0, p1, v1}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 1872
    .end local v1    # "index":I
    :cond_0
    return-object p0
.end method

.method public deleteCharAt(I)Lcn/xutils/commons/text/StrBuilder;
    .locals 2
    .param p1, "index"    # I

    .line 360
    if-ltz p1, :cond_0

    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 363
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 364
    return-object p0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "ch"    # C

    .line 1848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1849
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1850
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1851
    goto :goto_1

    .line 1848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1854
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1919
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replace(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public deleteFirst(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1882
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1883
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 1884
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1885
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 1886
    add-int v2, v1, v0

    invoke-direct {p0, v1, v2, v0}, Lcn/xutils/commons/text/StrBuilder;->deleteImpl(III)V

    .line 1889
    .end local v1    # "index":I
    :cond_0
    return-object p0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 2220
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2221
    return v0

    .line 2223
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2224
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2225
    return v2

    .line 2227
    :cond_1
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2228
    return v0

    .line 2230
    :cond_2
    sub-int/2addr v3, v1

    .line 2231
    .local v3, "pos":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2232
    iget-object v5, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    .line 2233
    return v0

    .line 2231
    :cond_3
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2236
    .end local v4    # "i":I
    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "capacity"    # I

    .line 235
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 236
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 237
    .local v0, "old":[C
    mul-int/lit8 v1, p1, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 238
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public equals(Lcn/xutils/commons/text/StrBuilder;)Z
    .locals 7
    .param p1, "other"    # Lcn/xutils/commons/text/StrBuilder;

    .line 2765
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2766
    return v0

    .line 2768
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2769
    return v1

    .line 2771
    :cond_1
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    iget v3, p1, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-eq v2, v3, :cond_2

    .line 2772
    return v1

    .line 2774
    :cond_2
    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2775
    .local v3, "thisBuf":[C
    iget-object v4, p1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2776
    .local v4, "otherBuf":[C
    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 2777
    aget-char v5, v3, v2

    aget-char v6, v4, v2

    if-eq v5, v6, :cond_3

    .line 2778
    return v1

    .line 2776
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2781
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2793
    instance-of v0, p1, Lcn/xutils/commons/text/StrBuilder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/text/StrBuilder;

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->equals(Lcn/xutils/commons/text/StrBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equalsIgnoreCase(Lcn/xutils/commons/text/StrBuilder;)Z
    .locals 9
    .param p1, "other"    # Lcn/xutils/commons/text/StrBuilder;

    .line 2739
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 2740
    return v0

    .line 2742
    :cond_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    iget v2, p1, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    .line 2743
    return v3

    .line 2745
    :cond_1
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2746
    .local v2, "thisBuf":[C
    iget-object v4, p1, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2747
    .local v4, "otherBuf":[C
    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2748
    aget-char v5, v2, v1

    .line 2749
    .local v5, "c1":C
    aget-char v6, v4, v1

    .line 2750
    .local v6, "c2":C
    if-eq v5, v6, :cond_2

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    if-eq v7, v8, :cond_2

    .line 2751
    return v3

    .line 2747
    .end local v5    # "c1":C
    .end local v6    # "c2":C
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2754
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "destination"    # [C
    .param p4, "destinationIndex"    # I

    .line 428
    if-ltz p1, :cond_2

    .line 431
    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 434
    if-gt p1, p2, :cond_0

    .line 437
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    return-void

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public getChars([C)[C
    .locals 3
    .param p1, "destination"    # [C

    .line 409
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    .line 410
    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 411
    :cond_0
    new-array p1, v0, [C

    .line 413
    :cond_1
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 2803
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2804
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 2805
    .local v1, "hash":I
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2806
    mul-int/lit8 v3, v1, 0x1f

    aget-char v4, v0, v2

    add-int v1, v3, v4

    .line 2805
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2808
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public indexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(CI)I

    move-result v0

    return v0
.end method

.method public indexOf(CI)I
    .locals 4
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2423
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2424
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_0

    .line 2425
    return v1

    .line 2427
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2428
    .local v0, "thisBuf":[C
    move v2, p2

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_2

    .line 2429
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_1

    .line 2430
    return v2

    .line 2428
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2433
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public indexOf(Lcn/xutils/commons/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 2476
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Lcn/xutils/commons/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Lcn/xutils/commons/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2493
    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2494
    const/4 v0, -0x1

    if-eqz p1, :cond_3

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_0

    goto :goto_1

    .line 2497
    :cond_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 2498
    .local v1, "len":I
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2499
    .local v2, "buf":[C
    move v3, p2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 2500
    invoke-virtual {p1, v2, v3, p2, v1}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_1

    .line 2501
    return v3

    .line 2499
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2504
    .end local v3    # "i":I
    :cond_2
    return v0

    .line 2495
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    :cond_3
    :goto_1
    return v0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2446
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2461
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public insert(IC)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # C

    .line 1731
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->validateIndex(I)V

    .line 1732
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1733
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1734
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1735
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1736
    return-object p0
.end method

.method public insert(ID)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 1784
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IF)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 1772
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(II)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1748
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(IJ)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1760
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/Object;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 1603
    if-nez p2, :cond_0

    .line 1604
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1606
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 5
    .param p1, "index"    # I
    .param p2, "str"    # Ljava/lang/String;

    .line 1619
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->validateIndex(I)V

    .line 1620
    if-nez p2, :cond_0

    .line 1621
    iget-object p2, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 1623
    :cond_0
    if-eqz p2, :cond_1

    .line 1624
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1625
    .local v0, "strLen":I
    if-lez v0, :cond_1

    .line 1626
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    .line 1627
    .local v1, "newSize":I
    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1628
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1629
    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1630
    const/4 v2, 0x0

    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1633
    .end local v0    # "strLen":I
    .end local v1    # "newSize":I
    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1700
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->validateIndex(I)V

    .line 1701
    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 1702
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1703
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1704
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .local v2, "index":I
    const/16 v3, 0x74

    aput-char v3, v1, p1

    .line 1705
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x72

    aput-char v3, v1, v2

    .line 1706
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x75

    aput-char v3, v1, p1

    .line 1707
    aput-char v0, v1, v2

    .line 1708
    iget p1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    goto :goto_0

    .line 1710
    .end local v2    # "index":I
    .restart local p1    # "index":I
    :cond_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1711
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x66

    aput-char v3, v1, p1

    .line 1713
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x61

    aput-char v3, v1, v2

    .line 1714
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "index":I
    .restart local v2    # "index":I
    const/16 v3, 0x6c

    aput-char v3, v1, p1

    .line 1715
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "index":I
    .restart local p1    # "index":I
    const/16 v3, 0x73

    aput-char v3, v1, v2

    .line 1716
    aput-char v0, v1, p1

    .line 1717
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    move v2, p1

    .line 1719
    .end local p1    # "index":I
    .restart local v2    # "index":I
    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "index"    # I
    .param p2, "chars"    # [C

    .line 1646
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->validateIndex(I)V

    .line 1647
    if-nez p2, :cond_0

    .line 1648
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1650
    :cond_0
    array-length v0, p2

    .line 1651
    .local v0, "len":I
    if-lez v0, :cond_1

    .line 1652
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1653
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int v2, p1, v0

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1654
    const/4 v1, 0x0

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1655
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1657
    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "index"    # I
    .param p2, "chars"    # [C
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1672
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->validateIndex(I)V

    .line 1673
    if-nez p2, :cond_0

    .line 1674
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->insert(ILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0

    .line 1676
    :cond_0
    if-ltz p3, :cond_3

    array-length v0, p2

    if-gt p3, v0, :cond_3

    .line 1679
    if-ltz p4, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 1682
    if-lez p4, :cond_1

    .line 1683
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 1684
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    add-int v1, p1, p4

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1685
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1686
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    iput v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 1688
    :cond_1
    return-object p0

    .line 1680
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1677
    :cond_3
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 280
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNotEmpty()Z
    .locals 1

    .line 294
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1
    .param p1, "ch"    # C

    .line 2514
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->lastIndexOf(CI)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(CI)I
    .locals 3
    .param p1, "ch"    # C
    .param p2, "startIndex"    # I

    .line 2525
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2526
    const/4 v0, -0x1

    if-gez p2, :cond_1

    .line 2527
    return v0

    .line 2529
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_3

    .line 2530
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-ne v2, p1, :cond_2

    .line 2531
    return v1

    .line 2529
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2534
    .end local v1    # "i":I
    :cond_3
    return v0
.end method

.method public lastIndexOf(Lcn/xutils/commons/text/StrMatcher;)I
    .locals 1
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;

    .line 2577
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->lastIndexOf(Lcn/xutils/commons/text/StrMatcher;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Lcn/xutils/commons/text/StrMatcher;I)I
    .locals 5
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "startIndex"    # I

    .line 2594
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    move p2, v0

    .line 2595
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_2

    .line 2598
    :cond_1
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2599
    .local v1, "buf":[C
    add-int/lit8 v2, p2, 0x1

    .line 2600
    .local v2, "endIndex":I
    move v3, p2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 2601
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v3, v4, v2}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v4

    if-lez v4, :cond_2

    .line 2602
    return v3

    .line 2600
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2605
    .end local v3    # "i":I
    :cond_3
    return v0

    .line 2596
    .end local v1    # "buf":[C
    .end local v2    # "endIndex":I
    :cond_4
    :goto_2
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 2547
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "startIndex"    # I

    .line 2562
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2301
    if-gtz p1, :cond_0

    .line 2302
    const-string v0, ""

    return-object v0

    .line 2304
    :cond_0
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2305
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v2, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2307
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 191
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2351
    if-gez p1, :cond_0

    .line 2352
    const/4 p1, 0x0

    .line 2354
    :cond_0
    if-lez p2, :cond_3

    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2357
    :cond_1
    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2358
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2360
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2355
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public minimizeCapacity()Lcn/xutils/commons/text/StrBuilder;
    .locals 4

    .line 249
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 251
    .local v0, "old":[C
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 252
    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    .end local v0    # "old":[C
    :cond_0
    return-object p0
.end method

.method public readFrom(Ljava/lang/Readable;)I
    .locals 6
    .param p1, "readable"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 453
    .local v0, "oldSize":I
    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 454
    move-object v1, p1

    check-cast v1, Ljava/io/Reader;

    .line 455
    .local v1, "r":Ljava/io/Reader;
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 457
    :goto_0
    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    array-length v5, v3

    sub-int/2addr v5, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v3

    move v4, v3

    .local v4, "read":I
    if-eq v3, v2, :cond_0

    .line 458
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v4

    iput v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 459
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    goto :goto_0

    .line 461
    .end local v1    # "r":Ljava/io/Reader;
    .end local v4    # "read":I
    :cond_0
    goto :goto_2

    :cond_1
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_2

    .line 462
    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 463
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v2

    .line 464
    .local v2, "remaining":I
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v2

    invoke-virtual {p0, v3}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 465
    iget-object v3, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 466
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v3, v2

    iput v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 467
    .end local v1    # "cb":Ljava/nio/CharBuffer;
    .end local v2    # "remaining":I
    goto :goto_2

    .line 469
    :cond_2
    :goto_1
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 470
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 471
    .local v1, "buf":Ljava/nio/CharBuffer;
    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    .line 472
    .local v3, "read":I
    if-ne v3, v2, :cond_3

    .line 473
    nop

    .line 478
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    :goto_2
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v1, v0

    return v1

    .line 475
    .restart local v1    # "buf":Ljava/nio/CharBuffer;
    .restart local v3    # "read":I
    :cond_3
    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    add-int/2addr v4, v3

    iput v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 476
    .end local v1    # "buf":Ljava/nio/CharBuffer;
    .end local v3    # "read":I
    goto :goto_1
.end method

.method public replace(IILjava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 7
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I
    .param p3, "replaceStr"    # Ljava/lang/String;

    .line 1956
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 1957
    invoke-static {p3}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1958
    .local v6, "insertLen":I
    sub-int v3, p2, p1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 1959
    return-object p0
.end method

.method public replace(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "endIndex"    # I
    .param p5, "replaceCount"    # I

    .line 2092
    invoke-virtual {p0, p3, p4}, Lcn/xutils/commons/text/StrBuilder;->validateRange(II)I

    move-result p4

    .line 2093
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replaceImpl(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(CC)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1971
    if-eq p1, p2, :cond_1

    .line 1972
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1973
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1974
    aput-char p2, v1, v0

    .line 1972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1978
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public replaceAll(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2053
    const/4 v3, 0x0

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replace(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2009
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    .line 2010
    .local v6, "searchLen":I
    if-lez v6, :cond_0

    .line 2011
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2012
    .local v7, "replaceLen":I
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 2013
    .local v8, "index":I
    :goto_0
    if-ltz v8, :cond_0

    .line 2014
    add-int v2, v8, v6

    move-object v0, p0

    move v1, v8

    move v3, v6

    move-object v4, p2

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2015
    add-int v0, v8, v7

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v8

    goto :goto_0

    .line 2018
    .end local v7    # "replaceLen":I
    .end local v8    # "index":I
    :cond_0
    return-object p0
.end method

.method public replaceFirst(CC)Lcn/xutils/commons/text/StrBuilder;
    .locals 3
    .param p1, "search"    # C
    .param p2, "replace"    # C

    .line 1990
    if-eq p1, p2, :cond_1

    .line 1991
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1992
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v2, v1, v0

    if-ne v2, p1, :cond_0

    .line 1993
    aput-char p2, v1, v0

    .line 1994
    goto :goto_1

    .line 1991
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1998
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 6
    .param p1, "matcher"    # Lcn/xutils/commons/text/StrMatcher;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2069
    const/4 v3, 0x0

    iget v4, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replace(Lcn/xutils/commons/text/StrMatcher;Ljava/lang/String;III)Lcn/xutils/commons/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 9
    .param p1, "searchStr"    # Ljava/lang/String;
    .param p2, "replaceStr"    # Ljava/lang/String;

    .line 2029
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v6

    .line 2030
    .local v6, "searchLen":I
    if-lez v6, :cond_0

    .line 2031
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 2032
    .local v7, "index":I
    if-ltz v7, :cond_0

    .line 2033
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v8

    .line 2034
    .local v8, "replaceLen":I
    add-int v2, v7, v6

    move-object v0, p0

    move v1, v7

    move v3, v6

    move-object v4, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    .line 2037
    .end local v7    # "index":I
    .end local v8    # "replaceLen":I
    :cond_0
    return-object p0
.end method

.method public reverse()Lcn/xutils/commons/text/StrBuilder;
    .locals 6

    .line 2140
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 2141
    return-object p0

    .line 2144
    :cond_0
    div-int/lit8 v1, v0, 0x2

    .line 2145
    .local v1, "half":I
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2146
    .local v2, "buf":[C
    const/4 v3, 0x0

    .local v3, "leftIdx":I
    add-int/lit8 v0, v0, -0x1

    .local v0, "rightIdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2147
    aget-char v4, v2, v3

    .line 2148
    .local v4, "swap":C
    aget-char v5, v2, v0

    aput-char v5, v2, v3

    .line 2149
    aput-char v4, v2, v0

    .line 2146
    .end local v4    # "swap":C
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2151
    .end local v0    # "rightIdx":I
    .end local v3    # "leftIdx":I
    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 4
    .param p1, "length"    # I

    .line 2324
    if-gtz p1, :cond_0

    .line 2325
    const-string v0, ""

    return-object v0

    .line 2327
    :cond_0
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2328
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 2330
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    iget v2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setCharAt(IC)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "ch"    # C

    .line 343
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 347
    return-object p0

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setLength(I)Lcn/xutils/commons/text/StrBuilder;
    .locals 4
    .param p1, "length"    # I

    .line 203
    if-ltz p1, :cond_2

    .line 206
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 207
    iput p1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    goto :goto_1

    .line 208
    :cond_0
    if-le p1, v0, :cond_1

    .line 209
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrBuilder;->ensureCapacity(I)Lcn/xutils/commons/text/StrBuilder;

    .line 210
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 211
    .local v0, "oldEnd":I
    iput p1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 212
    move v1, v0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 213
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    aput-char v3, v2, v1

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "oldEnd":I
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p0

    .line 204
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 0
    .param p1, "newLine"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder;->newLine:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lcn/xutils/commons/text/StrBuilder;
    .locals 1
    .param p1, "nullText"    # Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 p1, 0x0

    .line 180
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/text/StrBuilder;->nullText:Ljava/lang/String;

    .line 181
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 267
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .line 2192
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2193
    return v0

    .line 2195
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2196
    .local v1, "len":I
    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2197
    return v2

    .line 2199
    :cond_1
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    .line 2200
    return v0

    .line 2202
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 2203
    iget-object v4, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    .line 2204
    return v0

    .line 2202
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2207
    .end local v3    # "i":I
    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2245
    if-ltz p1, :cond_2

    .line 2248
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-gt p2, v0, :cond_1

    .line 2251
    if-gt p1, p2, :cond_0

    .line 2254
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2252
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2249
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2246
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I

    .line 2265
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lcn/xutils/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2283
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 2284
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 373
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 374
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v0

    .line 376
    :cond_0
    new-array v1, v0, [C

    .line 377
    .local v1, "chars":[C
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    return-object v1
.end method

.method public toCharArray(II)[C
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 392
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 393
    sub-int v0, p2, p1

    .line 394
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 395
    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_CHAR_ARRAY:[C

    return-object v1

    .line 397
    :cond_0
    new-array v1, v0, [C

    .line 398
    .local v1, "chars":[C
    iget-object v2, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v3, 0x0

    invoke-static {v2, p1, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2823
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 2833
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 2844
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public trim()Lcn/xutils/commons/text/StrBuilder;
    .locals 5

    .line 2161
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 2162
    return-object p0

    .line 2164
    :cond_0
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 2165
    .local v0, "len":I
    iget-object v1, p0, Lcn/xutils/commons/text/StrBuilder;->buffer:[C

    .line 2166
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 2167
    .local v2, "pos":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_1

    aget-char v4, v1, v2

    if-gt v4, v3, :cond_1

    .line 2168
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2170
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v1, v4

    if-gt v4, v3, :cond_2

    .line 2171
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2173
    :cond_2
    iget v3, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-ge v0, v3, :cond_3

    .line 2174
    invoke-virtual {p0, v0, v3}, Lcn/xutils/commons/text/StrBuilder;->delete(II)Lcn/xutils/commons/text/StrBuilder;

    .line 2176
    :cond_3
    if-lez v2, :cond_4

    .line 2177
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcn/xutils/commons/text/StrBuilder;->delete(II)Lcn/xutils/commons/text/StrBuilder;

    .line 2179
    :cond_4
    return-object p0
.end method

.method protected validateIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .line 2887
    if-ltz p1, :cond_0

    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-gt p1, v0, :cond_0

    .line 2890
    return-void

    .line 2888
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .locals 2
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .line 2868
    if-ltz p1, :cond_2

    .line 2871
    iget v0, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    if-le p2, v0, :cond_0

    .line 2872
    iget p2, p0, Lcn/xutils/commons/text/StrBuilder;->size:I

    .line 2874
    :cond_0
    if-gt p1, p2, :cond_1

    .line 2877
    return p2

    .line 2875
    :cond_1
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    const-string v1, "end < start"

    invoke-direct {v0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2869
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method
