.class public Lcn/xutils/commons/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field public static final CR:Ljava/lang/String; = "\r"

.field public static final EMPTY:Ljava/lang/String; = ""

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final LF:Ljava/lang/String; = "\n"

.field private static final PAD_LIMIT:I = 0x2000

.field public static final SPACE:Ljava/lang/String; = " "

.field private static final STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$OM9gBRT5TGLip9Mrs0bYeePJeWw(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 188
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9547
    return-void
.end method

.method public static abbreviate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 222
    const-string v0, "..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcn/xutils/commons/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 261
    const-string v0, "..."

    invoke-static {p0, v0, p1, p2}, Lcn/xutils/commons/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static abbreviate(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "abbrevMarker"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "maxWidth"    # I

    .line 341
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 342
    invoke-static {p0, v1, p3}, Lcn/xutils/commons/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {v0}, Lcn/xutils/commons/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    return-object p0

    .line 347
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 348
    .local v0, "abbrevMarkerLength":I
    add-int/lit8 v3, v0, 0x1

    .line 349
    .local v3, "minAbbrevWidth":I
    add-int v4, v0, v0

    add-int/2addr v4, v2

    .line 351
    .local v4, "minAbbrevWidthOffset":I
    if-lt p3, v3, :cond_8

    .line 354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 355
    .local v2, "strLen":I
    if-gt v2, p3, :cond_2

    .line 356
    return-object p0

    .line 358
    :cond_2
    if-le p2, v2, :cond_3

    .line 359
    move p2, v2

    .line 361
    :cond_3
    sub-int v5, v2, p2

    sub-int v6, p3, v0

    if-ge v5, v6, :cond_4

    .line 362
    sub-int v5, p3, v0

    sub-int p2, v2, v5

    .line 364
    :cond_4
    add-int/lit8 v5, v0, 0x1

    if-gt p2, v5, :cond_5

    .line 365
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v6, p3, v0

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 367
    :cond_5
    if-lt p3, v4, :cond_7

    .line 370
    add-int v1, p2, p3

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_6

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sub-int v6, p3, v0

    invoke-static {v5, p1, v6}, Lcn/xutils/commons/StringUtils;->abbreviate(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 373
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v5, p3, v0

    sub-int v5, v2, v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 368
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "Minimum abbreviation width with offset is %d"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v2    # "strLen":I
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "Minimum abbreviation width is %d"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static abbreviateMiddle(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "middle"    # Ljava/lang/String;
    .param p2, "length"    # I

    .line 406
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v1}, Lcn/xutils/commons/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    .line 411
    .local v0, "targetSting":I
    div-int/lit8 v1, v0, 0x2

    rem-int/lit8 v3, v0, 0x2

    add-int/2addr v1, v3

    .line 412
    .local v1, "startOffset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    .line 414
    .local v3, "endOffset":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 414
    return-object v2

    .line 407
    .end local v0    # "targetSting":I
    .end local v1    # "startOffset":I
    .end local v3    # "endOffset":I
    :cond_1
    :goto_0
    return-object p0
.end method

.method private static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "suffixes"    # [Ljava/lang/CharSequence;

    .line 431
    if-eqz p0, :cond_3

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 434
    :cond_0
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 435
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 436
    .local v2, "s":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 437
    return-object p0

    .line 435
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 432
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 479
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs appendIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "suffixes"    # [Ljava/lang/CharSequence;

    .line 517
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/StringUtils;->appendIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 542
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 543
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 544
    return-object p0

    .line 547
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 548
    .local v2, "firstCodepoint":I
    invoke-static {v2}, Ljava/lang/Character;->toTitleCase(I)I

    move-result v3

    .line 549
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 551
    return-object p0

    .line 554
    :cond_1
    new-array v4, v0, [I

    .line 555
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 556
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 557
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 558
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 559
    .local v7, "codePoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 560
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 561
    .end local v7    # "codePoint":I
    move v6, v8

    goto :goto_0

    .line 562
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static center(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 589
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->center(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static center(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 617
    if-eqz p0, :cond_2

    if-gtz p1, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 621
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 622
    .local v1, "pads":I
    if-gtz v1, :cond_1

    .line 623
    return-object p0

    .line 625
    :cond_1
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 626
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    .line 627
    return-object p0

    .line 618
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static center(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 657
    if-eqz p0, :cond_3

    if-gtz p1, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    const-string p2, " "

    .line 663
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 664
    .local v0, "strLen":I
    sub-int v1, p1, v0

    .line 665
    .local v1, "pads":I
    if-gtz v1, :cond_2

    .line 666
    return-object p0

    .line 668
    :cond_2
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    invoke-static {p0, v2, p2}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 669
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 670
    return-object p0

    .line 658
    .end local v0    # "strLen":I
    .end local v1    # "pads":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static chomp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 699
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    return-object p0

    .line 703
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 704
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 705
    .local v0, "ch":C
    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 708
    :cond_1
    return-object p0

    .line 706
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1

    .line 711
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    .line 712
    .local v0, "lastIdx":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 714
    .local v4, "last":C
    if-ne v4, v2, :cond_4

    .line 715
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_5

    .line 716
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 718
    :cond_4
    if-eq v4, v3, :cond_5

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 721
    :cond_5
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static chomp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static chop(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 780
    if-nez p0, :cond_0

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 784
    .local v0, "strLen":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 785
    const-string v1, ""

    return-object v1

    .line 787
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .line 788
    .local v1, "lastIdx":I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 789
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 790
    .local v4, "last":C
    const/16 v5, 0xa

    if-ne v4, v5, :cond_2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2

    .line 791
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 793
    :cond_2
    return-object v3
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 829
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 867
    if-ne p0, p1, :cond_0

    .line 868
    const/4 v0, 0x0

    return v0

    .line 870
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 871
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 873
    :cond_2
    if-nez p1, :cond_4

    .line 874
    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 876
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 917
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;
    .param p2, "nullIsLess"    # Z

    .line 960
    if-ne p0, p1, :cond_0

    .line 961
    const/4 v0, 0x0

    return v0

    .line 963
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-nez p0, :cond_2

    .line 964
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 966
    :cond_2
    if-nez p1, :cond_4

    .line 967
    if-eqz p2, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 969
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/CharSequence;I)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 1022
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1023
    return v1

    .line 1025
    :cond_0
    invoke-static {p0, p1, v1}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 995
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    invoke-static {p0, p1, v0}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 996
    :cond_2
    :goto_0
    return v0
.end method

.method private static varargs containsAny(Lcn/xutils/commons/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "searchCharSequences"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/function/ToBooleanBiFunction<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .line 1162
    .local p0, "test":Lcn/xutils/commons/function/ToBooleanBiFunction;, "Lcn/xutils/commons/function/ToBooleanBiFunction<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1165
    :cond_0
    array-length v0, p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 1166
    .local v3, "searchCharSequence":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, v3}, Lcn/xutils/commons/function/ToBooleanBiFunction;->applyAsBoolean(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1167
    const/4 v0, 0x1

    return v0

    .line 1165
    .end local v3    # "searchCharSequence":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1170
    :cond_2
    return v1

    .line 1163
    :cond_3
    :goto_1
    return v1
.end method

.method public static containsAny(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 1112
    if-nez p1, :cond_0

    .line 1113
    const/4 v0, 0x0

    return v0

    .line 1115
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/CharSequenceUtils;->toCharArray(Ljava/lang/CharSequence;)[C

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1054
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1057
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1058
    .local v0, "csLength":I
    array-length v2, p1

    .line 1059
    .local v2, "searchLength":I
    add-int/lit8 v3, v0, -0x1

    .line 1060
    .local v3, "csLast":I
    add-int/lit8 v4, v2, -0x1

    .line 1061
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 1062
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1063
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_4

    .line 1064
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1065
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 1067
    return v9

    .line 1069
    :cond_1
    if-ne v7, v4, :cond_2

    .line 1071
    return v9

    .line 1073
    :cond_2
    if-ge v5, v3, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1074
    return v9

    .line 1063
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1061
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1079
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 1055
    .end local v0    # "csLength":I
    .end local v2    # "searchLength":I
    .end local v3    # "csLast":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static varargs containsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .line 1143
    new-instance v0, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0, p1}, Lcn/xutils/commons/StringUtils;->containsAny(Lcn/xutils/commons/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static varargs containsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchCharSequences"    # [Ljava/lang/CharSequence;

    .line 1200
    new-instance v0, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, p0, p1}, Lcn/xutils/commons/StringUtils;->containsAny(Lcn/xutils/commons/function/ToBooleanBiFunction;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static containsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 1228
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1231
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1232
    .local v7, "len":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v8, v1, v7

    .line 1233
    .local v8, "max":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-gt v9, v8, :cond_2

    .line 1234
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1235
    const/4 v0, 0x1

    return v0

    .line 1233
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1238
    .end local v9    # "i":I
    :cond_2
    return v0

    .line 1229
    .end local v7    # "len":I
    .end local v8    # "max":I
    :cond_3
    :goto_1
    return v0
.end method

.method public static containsNone(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "invalidChars"    # Ljava/lang/String;

    .line 1317
    if-nez p1, :cond_0

    .line 1318
    const/4 v0, 0x1

    return v0

    .line 1320
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->containsNone(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0
.end method

.method public static varargs containsNone(Ljava/lang/CharSequence;[C)Z
    .locals 11
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 1265
    const/4 v0, 0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 1268
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1269
    .local v1, "csLen":I
    add-int/lit8 v2, v1, -0x1

    .line 1270
    .local v2, "csLast":I
    array-length v3, p1

    .line 1271
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 1272
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 1273
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 1274
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 1275
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 1276
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    .line 1278
    return v9

    .line 1280
    :cond_1
    if-ne v7, v4, :cond_2

    .line 1282
    return v9

    .line 1284
    :cond_2
    if-ge v5, v2, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v10, v5, 0x1

    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    if-ne v8, v10, :cond_3

    .line 1285
    return v9

    .line 1274
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1272
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1290
    .end local v5    # "i":I
    :cond_5
    return v0

    .line 1266
    .end local v1    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static containsOnly(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "validChars"    # Ljava/lang/String;

    .line 1383
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->containsOnly(Ljava/lang/CharSequence;[C)Z

    move-result v0

    return v0

    .line 1384
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsOnly(Ljava/lang/CharSequence;[C)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "valid"    # [C

    .line 1347
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1351
    return v2

    .line 1353
    :cond_1
    array-length v1, p1

    if-nez v1, :cond_2

    .line 1354
    return v0

    .line 1356
    :cond_2
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->indexOfAnyBut(Ljava/lang/CharSequence;[C)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 1348
    :cond_4
    :goto_0
    return v0
.end method

.method public static containsWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "seq"    # Ljava/lang/CharSequence;

    .line 1401
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1402
    return v1

    .line 1404
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1405
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1406
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1407
    const/4 v1, 0x1

    return v1

    .line 1405
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1410
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method private static convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "decomposed"    # Ljava/lang/StringBuilder;

    .line 1414
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1415
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x141

    if-ne v1, v2, :cond_0

    .line 1416
    const/16 v1, 0x4c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 1417
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x142

    if-ne v1, v2, :cond_1

    .line 1418
    const/16 v1, 0x6c

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1414
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1421
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public static countMatches(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .line 1443
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1444
    const/4 v0, 0x0

    return v0

    .line 1446
    :cond_0
    const/4 v0, 0x0

    .line 1448
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1449
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne p1, v2, :cond_1

    .line 1450
    add-int/lit8 v0, v0, 0x1

    .line 1448
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1453
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method public static countMatches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "sub"    # Ljava/lang/CharSequence;

    .line 1479
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1482
    :cond_0
    const/4 v0, 0x0

    .line 1483
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1484
    .local v1, "idx":I
    :goto_0
    invoke-static {p0, p1, v1}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v2

    move v1, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1485
    add-int/lit8 v0, v0, 0x1

    .line 1486
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 1488
    :cond_1
    return v0

    .line 1480
    .end local v0    # "count":I
    .end local v1    # "idx":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static defaultIfBlank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1512
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultIfEmpty(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 1534
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultStr":Ljava/lang/CharSequence;, "TT;"
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 1554
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static defaultString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "nullDefault"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1577
    invoke-static {p0, p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1595
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1596
    return-object p0

    .line 1598
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1599
    .local v0, "sz":I
    new-array v1, v0, [C

    .line 1600
    .local v1, "chs":[C
    const/4 v2, 0x0

    .line 1601
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1602
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1603
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v1, v2

    move v2, v4

    .line 1601
    .end local v4    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1606
    .end local v3    # "i":I
    :cond_2
    if-ne v2, v0, :cond_3

    .line 1607
    return-object p0

    .line 1609
    :cond_3
    if-nez v2, :cond_4

    .line 1610
    const-string v3, ""

    return-object v3

    .line 1612
    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v3
.end method

.method public static difference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str1"    # Ljava/lang/String;
    .param p1, "str2"    # Ljava/lang/String;

    .line 1644
    if-nez p0, :cond_0

    .line 1645
    return-object p1

    .line 1647
    :cond_0
    if-nez p1, :cond_1

    .line 1648
    return-object p0

    .line 1650
    :cond_1
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 1651
    .local v0, "at":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1652
    const-string v1, ""

    return-object v1

    .line 1654
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 1682
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 1697
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1700
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1701
    return v0

    .line 1703
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1704
    .local v0, "strOffset":I
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v2, p0

    move v3, p2

    move v4, v0

    move-object v5, p1

    invoke-static/range {v2 .. v7}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    return v1

    .line 1698
    .end local v0    # "strOffset":I
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs endsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1729
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1732
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 1733
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1734
    const/4 v0, 0x1

    return v0

    .line 1732
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1737
    :cond_2
    return v1

    .line 1730
    :cond_3
    :goto_1
    return v1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "suffix"    # Ljava/lang/CharSequence;

    .line 1764
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 1790
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1791
    return v0

    .line 1793
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 1796
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1797
    return v1

    .line 1799
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1800
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1803
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1804
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 1805
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1806
    return v1

    .line 1804
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1809
    .end local v3    # "i":I
    :cond_5
    return v0

    .line 1794
    .end local v2    # "length":I
    :cond_6
    :goto_1
    return v1
.end method

.method public static varargs equalsAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1832
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1833
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1834
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lcn/xutils/commons/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1835
    const/4 v0, 0x1

    return v0

    .line 1833
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1839
    :cond_1
    return v1
.end method

.method public static varargs equalsAnyIgnoreCase(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 1862
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1863
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1864
    .local v3, "next":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lcn/xutils/commons/StringUtils;->equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1865
    const/4 v0, 0x1

    return v0

    .line 1863
    .end local v3    # "next":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1869
    :cond_1
    return v1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 9
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 1894
    if-ne p0, p1, :cond_0

    .line 1895
    const/4 v0, 0x1

    return v0

    .line 1897
    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 1900
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1901
    return v0

    .line 1903
    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 1898
    :cond_3
    :goto_0
    return v0
.end method

.method public static varargs firstNonBlank([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1933
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 1934
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1935
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lcn/xutils/commons/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1936
    return-object v2

    .line 1934
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1940
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs firstNonEmpty([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">([TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1968
    .local p0, "values":[Ljava/lang/CharSequence;, "[TT;"
    if-eqz p0, :cond_1

    .line 1969
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 1970
    .local v2, "val":Ljava/lang/CharSequence;, "TT;"
    invoke-static {v2}, Lcn/xutils/commons/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1971
    return-object v2

    .line 1969
    .end local v2    # "val":Ljava/lang/CharSequence;, "TT;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1975
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2002
    if-nez p0, :cond_0

    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/Charsets;->toCharsetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 1988
    if-nez p0, :cond_0

    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs getCommonPrefix([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "strs"    # [Ljava/lang/String;

    .line 2039
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2040
    return-object v1

    .line 2042
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->indexOfDifference([Ljava/lang/CharSequence;)I

    move-result v0

    .line 2043
    .local v0, "smallestIndexOfDiff":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 2045
    aget-object v2, p0, v3

    if-nez v2, :cond_1

    .line 2046
    return-object v1

    .line 2048
    :cond_1
    aget-object v1, p0, v3

    return-object v1

    .line 2050
    :cond_2
    if-nez v0, :cond_3

    .line 2052
    return-object v1

    .line 2055
    :cond_3
    aget-object v1, p0, v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 2081
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    return-object p0

    .line 2084
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2085
    .local v0, "sz":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2086
    .local v1, "strDigits":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2087
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 2088
    .local v3, "tempChar":C
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2089
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2086
    .end local v3    # "tempChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2092
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFuzzyDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/Locale;)I
    .locals 10
    .param p0, "term"    # Ljava/lang/CharSequence;
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2126
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 2129
    if-eqz p2, :cond_4

    .line 2137
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2138
    .local v0, "termLowerCase":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2141
    .local v1, "queryLowerCase":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2145
    .local v2, "score":I
    const/4 v3, 0x0

    .line 2148
    .local v3, "termIndex":I
    const/high16 v4, -0x80000000

    .line 2150
    .local v4, "previousMatchingCharacterIndex":I
    const/4 v5, 0x0

    .local v5, "queryIndex":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 2151
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2153
    .local v6, "queryChar":C
    const/4 v7, 0x0

    .line 2154
    .local v7, "termCharacterMatchFound":Z
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_2

    if-nez v7, :cond_2

    .line 2155
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 2157
    .local v8, "termChar":C
    if-ne v6, v8, :cond_1

    .line 2159
    add-int/lit8 v2, v2, 0x1

    .line 2163
    add-int/lit8 v9, v4, 0x1

    if-ne v9, v3, :cond_0

    .line 2164
    add-int/lit8 v2, v2, 0x2

    .line 2167
    :cond_0
    move v4, v3

    .line 2171
    const/4 v7, 0x1

    .line 2154
    .end local v8    # "termChar":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2150
    .end local v6    # "queryChar":C
    .end local v7    # "termCharacterMatchFound":Z
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2176
    .end local v5    # "queryIndex":I
    :cond_3
    return v2

    .line 2130
    .end local v0    # "termLowerCase":Ljava/lang/String;
    .end local v1    # "queryLowerCase":Ljava/lang/String;
    .end local v2    # "score":I
    .end local v3    # "termIndex":I
    .end local v4    # "previousMatchingCharacterIndex":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Locale must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2127
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIfBlank(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2205
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/xutils/commons/function/Suppliers;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getIfEmpty(Ljava/lang/CharSequence;Ljava/util/function/Supplier;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 2233
    .local p0, "str":Ljava/lang/CharSequence;, "TT;"
    .local p1, "defaultSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcn/xutils/commons/function/Suppliers;->get(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static getJaroWinklerDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)D
    .locals 13
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2273
    const-wide v0, 0x3fb999999999999aL    # 0.1

    .line 2275
    .local v0, "DEFAULT_SCALING_FACTOR":D
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 2279
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 2280
    .local v2, "mtp":[I
    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-double v3, v3

    .line 2281
    .local v3, "m":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_0

    .line 2282
    return-wide v5

    .line 2284
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-double v5, v5

    div-double v5, v3, v5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    int-to-double v7, v7

    div-double v7, v3, v7

    add-double/2addr v5, v7

    const/4 v7, 0x1

    aget v7, v2, v7

    int-to-double v7, v7

    sub-double v7, v3, v7

    div-double/2addr v7, v3

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v5, v7

    .line 2285
    .local v5, "j":D
    const-wide v7, 0x3fe6666666666666L    # 0.7

    cmpg-double v7, v5, v7

    if-gez v7, :cond_1

    move-wide v7, v5

    goto :goto_0

    :cond_1
    const/4 v7, 0x3

    aget v7, v2, v7

    int-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    div-double v7, v9, v7

    const-wide v11, 0x3fb999999999999aL    # 0.1

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    const/4 v11, 0x2

    aget v11, v2, v11

    int-to-double v11, v11

    mul-double/2addr v7, v11

    sub-double/2addr v9, v5

    mul-double/2addr v7, v9

    add-double/2addr v7, v5

    .line 2286
    .local v7, "jw":D
    :goto_0
    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double v11, v7, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-double v11, v11

    div-double/2addr v11, v9

    return-wide v11

    .line 2276
    .end local v2    # "mtp":[I
    .end local v3    # "m":D
    .end local v5    # "j":D
    .end local v7    # "jw":D
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Strings must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 13
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2326
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    .line 2330
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2331
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2333
    .local v1, "m":I
    if-nez v0, :cond_0

    .line 2334
    return v1

    .line 2336
    :cond_0
    if-nez v1, :cond_1

    .line 2337
    return v0

    .line 2340
    :cond_1
    if-le v0, v1, :cond_2

    .line 2342
    move-object v2, p0

    .line 2343
    .local v2, "tmp":Ljava/lang/CharSequence;
    move-object p0, p1

    .line 2344
    move-object p1, v2

    .line 2345
    move v0, v1

    .line 2346
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2349
    .end local v2    # "tmp":Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [I

    .line 2359
    .local v2, "p":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-gt v3, v0, :cond_3

    .line 2360
    aput v3, v2, v3

    .line 2359
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2363
    :cond_3
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-gt v4, v1, :cond_6

    .line 2364
    const/4 v5, 0x0

    aget v6, v2, v5

    .line 2365
    .local v6, "upperleft":I
    add-int/lit8 v7, v4, -0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    .line 2366
    .local v7, "jOfT":C
    aput v4, v2, v5

    .line 2368
    const/4 v3, 0x1

    :goto_2
    if-gt v3, v0, :cond_5

    .line 2369
    aget v8, v2, v3

    .line 2370
    .local v8, "upper":I
    add-int/lit8 v9, v3, -0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v7, :cond_4

    move v9, v5

    goto :goto_3

    :cond_4
    move v9, v10

    .line 2372
    .local v9, "cost":I
    :goto_3
    add-int/lit8 v11, v3, -0x1

    aget v11, v2, v11

    add-int/2addr v11, v10

    aget v12, v2, v3

    add-int/2addr v12, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v11, v6, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aput v10, v2, v3

    .line 2373
    move v6, v8

    .line 2368
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2363
    .end local v8    # "upper":I
    .end local v9    # "cost":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2377
    .end local v6    # "upperleft":I
    .end local v7    # "jOfT":C
    :cond_6
    aget v5, v2, v0

    return v5

    .line 2327
    .end local v0    # "n":I
    .end local v1    # "m":I
    .end local v2    # "p":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLevenshteinDistance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 16
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "t"    # Ljava/lang/CharSequence;
    .param p2, "threshold"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2417
    move/from16 v0, p2

    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 2420
    if-ltz v0, :cond_e

    .line 2468
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2469
    .local v1, "n":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2472
    .local v2, "m":I
    const/4 v3, -0x1

    if-nez v1, :cond_1

    .line 2473
    if-gt v2, v0, :cond_0

    move v3, v2

    :cond_0
    return v3

    .line 2475
    :cond_1
    if-nez v2, :cond_3

    .line 2476
    if-gt v1, v0, :cond_2

    move v3, v1

    :cond_2
    return v3

    .line 2478
    :cond_3
    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v0, :cond_4

    .line 2480
    return v3

    .line 2483
    :cond_4
    if-le v1, v2, :cond_5

    .line 2485
    move-object/from16 v4, p0

    .line 2486
    .local v4, "tmp":Ljava/lang/CharSequence;
    move-object/from16 v5, p1

    .line 2487
    .end local p0    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    move-object v6, v4

    .line 2488
    .end local p1    # "t":Ljava/lang/CharSequence;
    .local v6, "t":Ljava/lang/CharSequence;
    move v1, v2

    .line 2489
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 2483
    .end local v4    # "tmp":Ljava/lang/CharSequence;
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 2492
    .end local p0    # "s":Ljava/lang/CharSequence;
    .end local p1    # "t":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    .restart local v6    # "t":Ljava/lang/CharSequence;
    :goto_0
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [I

    .line 2493
    .local v4, "p":[I
    add-int/lit8 v7, v1, 0x1

    new-array v7, v7, [I

    .line 2497
    .local v7, "d":[I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    .line 2498
    .local v8, "boundary":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_6

    .line 2499
    aput v10, v4, v10

    .line 2498
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2503
    .end local v10    # "i":I
    :cond_6
    array-length v10, v4

    const v11, 0x7fffffff

    invoke-static {v4, v8, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 2504
    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([II)V

    .line 2507
    const/4 v10, 0x1

    .local v10, "j":I
    :goto_2
    if-gt v10, v2, :cond_c

    .line 2508
    add-int/lit8 v12, v10, -0x1

    invoke-interface {v6, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    .line 2509
    .local v12, "jOfT":C
    const/4 v13, 0x0

    aput v10, v7, v13

    .line 2512
    sub-int v13, v10, v0

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2513
    .local v13, "min":I
    sub-int v14, v11, v0

    if-le v10, v14, :cond_7

    move v14, v1

    goto :goto_3

    :cond_7
    add-int v14, v10, v0

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2516
    .local v14, "max":I
    :goto_3
    if-le v13, v14, :cond_8

    .line 2517
    return v3

    .line 2521
    :cond_8
    if-le v13, v9, :cond_9

    .line 2522
    add-int/lit8 v15, v13, -0x1

    aput v11, v7, v15

    .line 2526
    :cond_9
    move v15, v13

    .local v15, "i":I
    :goto_4
    if-gt v15, v14, :cond_b

    .line 2527
    add-int/lit8 v11, v15, -0x1

    invoke-interface {v5, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-ne v11, v12, :cond_a

    .line 2529
    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    aput v11, v7, v15

    goto :goto_5

    .line 2532
    :cond_a
    add-int/lit8 v11, v15, -0x1

    aget v11, v7, v11

    aget v3, v4, v15

    invoke-static {v11, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v11, v15, -0x1

    aget v11, v4, v11

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v9

    aput v3, v7, v15

    .line 2526
    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_4

    .line 2537
    .end local v15    # "i":I
    :cond_b
    move-object v3, v4

    .line 2538
    .local v3, "tmp":[I
    move-object v4, v7

    .line 2539
    move-object v7, v3

    .line 2507
    .end local v12    # "jOfT":C
    .end local v13    # "min":I
    .end local v14    # "max":I
    add-int/lit8 v10, v10, 0x1

    const/4 v3, -0x1

    const v11, 0x7fffffff

    goto :goto_2

    .line 2544
    .end local v3    # "tmp":[I
    .end local v10    # "j":I
    :cond_c
    aget v3, v4, v1

    if-gt v3, v0, :cond_d

    .line 2545
    aget v3, v4, v1

    return v3

    .line 2547
    :cond_d
    const/4 v3, -0x1

    return v3

    .line 2421
    .end local v1    # "n":I
    .end local v2    # "m":I
    .end local v4    # "p":[I
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v6    # "t":Ljava/lang/CharSequence;
    .end local v7    # "d":[I
    .end local v8    # "boundary":I
    .restart local p0    # "s":Ljava/lang/CharSequence;
    .restart local p1    # "t":Ljava/lang/CharSequence;
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Threshold must not be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2418
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Strings must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 2659
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2660
    const/4 v0, -0x1

    return v0

    .line 2662
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 2718
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2719
    const/4 v0, -0x1

    return v0

    .line 2721
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 2575
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2578
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 2576
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 2615
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2618
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 2616
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfAny(Ljava/lang/CharSequence;Ljava/lang/String;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/String;

    .line 2849
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2852
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->indexOfAny(Ljava/lang/CharSequence;[C)I

    move-result v0

    return v0

    .line 2850
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2748
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2751
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2752
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2753
    .local v2, "csLast":I
    array-length v3, p1

    .line 2754
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2755
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2756
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2757
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2758
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2759
    if-ge v5, v2, :cond_2

    if-ge v7, v4, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_2

    .line 2763
    :cond_1
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2764
    return v5

    .line 2760
    :cond_2
    :goto_2
    return v5

    .line 2757
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2755
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2769
    .end local v5    # "i":I
    :cond_5
    return v1

    .line 2749
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static varargs indexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 2800
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 2805
    :cond_0
    const v1, 0x7fffffff

    .line 2808
    .local v1, "ret":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 2809
    .local v5, "search":Ljava/lang/CharSequence;
    if-nez v5, :cond_1

    .line 2810
    goto :goto_1

    .line 2812
    :cond_1
    invoke-static {p0, v5, v3}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    .line 2813
    .local v6, "tmp":I
    if-ne v6, v0, :cond_2

    .line 2814
    goto :goto_1

    .line 2817
    :cond_2
    if-ge v6, v1, :cond_3

    .line 2818
    move v1, v6

    .line 2808
    .end local v5    # "search":Ljava/lang/CharSequence;
    .end local v6    # "tmp":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2822
    :cond_4
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 2801
    .end local v1    # "ret":I
    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfAnyBut(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 7
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # Ljava/lang/CharSequence;

    .line 2929
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2932
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2933
    .local v0, "strLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 2934
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 2935
    .local v3, "ch":C
    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    .line 2936
    .local v5, "chFound":Z
    :goto_1
    add-int/lit8 v6, v2, 0x1

    if-ge v6, v0, :cond_2

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2937
    add-int/lit8 v6, v2, 0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2938
    .local v6, "ch2":C
    if-eqz v5, :cond_3

    invoke-static {p1, v6, v4}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;II)I

    move-result v4

    if-gez v4, :cond_3

    .line 2939
    return v2

    .line 2941
    .end local v6    # "ch2":C
    :cond_2
    if-nez v5, :cond_3

    .line 2942
    return v2

    .line 2941
    :cond_3
    nop

    .line 2933
    .end local v3    # "ch":C
    .end local v5    # "chFound":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2945
    .end local v2    # "i":I
    :cond_4
    return v1

    .line 2930
    .end local v0    # "strLen":I
    :cond_5
    :goto_2
    return v1
.end method

.method public static varargs indexOfAnyBut(Ljava/lang/CharSequence;[C)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "searchChars"    # [C

    .line 2880
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_6

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2883
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2884
    .local v0, "csLen":I
    add-int/lit8 v2, v0, -0x1

    .line 2885
    .local v2, "csLast":I
    array-length v3, p1

    .line 2886
    .local v3, "searchLen":I
    add-int/lit8 v4, v3, -0x1

    .line 2888
    .local v4, "searchLast":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2889
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 2890
    .local v6, "ch":C
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 2891
    aget-char v8, p1, v7

    if-ne v8, v6, :cond_3

    .line 2892
    if-ge v5, v2, :cond_2

    if-ge v7, v4, :cond_2

    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 2893
    goto :goto_2

    .line 2895
    :cond_1
    add-int/lit8 v8, v7, 0x1

    aget-char v8, p1, v8

    add-int/lit8 v9, v5, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ne v8, v9, :cond_3

    .line 2896
    nop

    .line 2888
    .end local v6    # "ch":C
    .end local v7    # "j":I
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2890
    .restart local v6    # "ch":C
    .restart local v7    # "j":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2900
    .end local v7    # "j":I
    :cond_4
    return v5

    .line 2902
    .end local v5    # "i":I
    .end local v6    # "ch":C
    :cond_5
    return v1

    .line 2881
    .end local v0    # "csLen":I
    .end local v2    # "csLast":I
    .end local v3    # "searchLen":I
    .end local v4    # "searchLast":I
    :cond_6
    :goto_3
    return v1
.end method

.method public static indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4
    .param p0, "cs1"    # Ljava/lang/CharSequence;
    .param p1, "cs2"    # Ljava/lang/CharSequence;

    .line 3064
    const/4 v0, -0x1

    if-ne p0, p1, :cond_0

    .line 3065
    return v0

    .line 3067
    :cond_0
    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    .line 3071
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3072
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 3073
    goto :goto_1

    .line 3071
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3076
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    goto :goto_2

    .line 3079
    :cond_4
    return v0

    .line 3077
    :cond_5
    :goto_2
    return v1

    .line 3068
    .end local v1    # "i":I
    :cond_6
    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs indexOfDifference([Ljava/lang/CharSequence;)I
    .locals 12
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 2981
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-gt v0, v1, :cond_0

    .line 2982
    return v2

    .line 2984
    :cond_0
    const/4 v0, 0x0

    .line 2985
    .local v0, "anyStringNull":Z
    const/4 v1, 0x1

    .line 2986
    .local v1, "allStringsNull":Z
    array-length v3, p0

    .line 2987
    .local v3, "arrayLen":I
    const v4, 0x7fffffff

    .line 2988
    .local v4, "shortestStrLen":I
    const/4 v5, 0x0

    .line 2993
    .local v5, "longestStrLen":I
    array-length v6, p0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_2

    aget-object v9, p0, v8

    .line 2994
    .local v9, "cs":Ljava/lang/CharSequence;
    if-nez v9, :cond_1

    .line 2995
    const/4 v0, 0x1

    .line 2996
    const/4 v4, 0x0

    goto :goto_1

    .line 2998
    :cond_1
    const/4 v1, 0x0

    .line 2999
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3000
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2993
    .end local v9    # "cs":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3005
    :cond_2
    if-nez v1, :cond_a

    if-nez v5, :cond_3

    if-nez v0, :cond_3

    goto :goto_6

    .line 3010
    :cond_3
    if-nez v4, :cond_4

    .line 3011
    return v7

    .line 3015
    :cond_4
    const/4 v6, -0x1

    .line 3016
    .local v6, "firstDiff":I
    const/4 v8, 0x0

    .local v8, "stringPos":I
    :goto_2
    if-ge v8, v4, :cond_8

    .line 3017
    aget-object v9, p0, v7

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 3018
    .local v9, "comparisonChar":C
    const/4 v10, 0x1

    .local v10, "arrayPos":I
    :goto_3
    if-ge v10, v3, :cond_6

    .line 3019
    aget-object v11, p0, v10

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-eq v11, v9, :cond_5

    .line 3020
    move v6, v8

    .line 3021
    goto :goto_4

    .line 3018
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 3024
    .end local v10    # "arrayPos":I
    :cond_6
    :goto_4
    if-eq v6, v2, :cond_7

    .line 3025
    goto :goto_5

    .line 3016
    .end local v9    # "comparisonChar":C
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3029
    .end local v8    # "stringPos":I
    :cond_8
    :goto_5
    if-ne v6, v2, :cond_9

    if-eq v4, v5, :cond_9

    .line 3033
    return v4

    .line 3035
    :cond_9
    return v6

    .line 3006
    .end local v6    # "firstDiff":I
    :cond_a
    :goto_6
    return v2
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 3109
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 3145
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 3148
    :cond_0
    if-gez p2, :cond_1

    .line 3149
    const/4 p2, 0x0

    .line 3151
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 3152
    .local v1, "endLimit":I
    if-le p2, v1, :cond_2

    .line 3153
    return v0

    .line 3155
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 3156
    return p2

    .line 3158
    :cond_3
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 3159
    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object v3, p0

    move v5, v2

    move-object v6, p1

    invoke-static/range {v3 .. v8}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3160
    return v2

    .line 3158
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3163
    .end local v2    # "i":I
    :cond_5
    return v0

    .line 3146
    .end local v1    # "endLimit":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static varargs isAllBlank([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3188
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3189
    return v1

    .line 3191
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3192
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lcn/xutils/commons/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3193
    return v2

    .line 3191
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3196
    :cond_2
    return v1
.end method

.method public static varargs isAllEmpty([Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3219
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3220
    return v1

    .line 3222
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 3223
    .local v4, "cs":Ljava/lang/CharSequence;
    invoke-static {v4}, Lcn/xutils/commons/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3224
    return v2

    .line 3222
    .end local v4    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3227
    :cond_2
    return v1
.end method

.method public static isAllLowerCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3253
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3254
    return v1

    .line 3256
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3257
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3258
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3259
    return v1

    .line 3257
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3262
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAllUpperCase(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3288
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3289
    return v1

    .line 3291
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3292
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3293
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3294
    return v1

    .line 3292
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3297
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlpha(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3321
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3322
    return v1

    .line 3324
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3325
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3326
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3327
    return v1

    .line 3325
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3330
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphaSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3427
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3428
    return v0

    .line 3430
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3431
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3432
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3433
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3434
    return v0

    .line 3431
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3437
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAlphanumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3356
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3357
    return v1

    .line 3359
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3360
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3361
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3362
    return v1

    .line 3360
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3365
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isAlphanumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3391
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3392
    return v0

    .line 3394
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3395
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3396
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3397
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3398
    return v0

    .line 3395
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3401
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static varargs isAnyBlank([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3464
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3465
    return v1

    .line 3467
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3468
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3469
    const/4 v0, 0x1

    return v0

    .line 3467
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3472
    :cond_2
    return v1
.end method

.method public static varargs isAnyEmpty([Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3496
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3497
    return v1

    .line 3499
    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 3500
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-static {v3}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3501
    const/4 v0, 0x1

    return v0

    .line 3499
    .end local v3    # "cs":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3504
    :cond_2
    return v1
.end method

.method public static isAsciiPrintable(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3534
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3535
    return v0

    .line 3537
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3538
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3539
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcn/xutils/commons/CharUtils;->isAsciiPrintable(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3540
    return v0

    .line 3538
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3543
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3565
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 3566
    .local v0, "strLen":I
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3567
    return v1

    .line 3569
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3570
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3571
    const/4 v1, 0x0

    return v1

    .line 3569
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3574
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3597
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isMixedCase(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3624
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    .line 3627
    :cond_0
    const/4 v0, 0x0

    .line 3628
    .local v0, "containsUppercase":Z
    const/4 v3, 0x0

    .line 3629
    .local v3, "containsLowercase":Z
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 3630
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 3631
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 3632
    return v2

    .line 3634
    :cond_1
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3635
    const/4 v0, 0x1

    goto :goto_1

    .line 3636
    :cond_2
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3637
    const/4 v3, 0x1

    .line 3630
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3640
    .end local v5    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    return v1

    .line 3625
    .end local v0    # "containsUppercase":Z
    .end local v3    # "containsLowercase":Z
    .end local v4    # "sz":I
    :cond_6
    :goto_2
    return v1
.end method

.method public static varargs isNoneBlank([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3667
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isAnyBlank([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static varargs isNoneEmpty([Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "css"    # [Ljava/lang/CharSequence;

    .line 3691
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isAnyEmpty([Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3714
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3733
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3768
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3769
    return v1

    .line 3771
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3772
    .local v0, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3773
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3774
    return v1

    .line 3772
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3777
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isNumericSpace(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3807
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3808
    return v0

    .line 3810
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3811
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3812
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 3813
    .local v3, "nowChar":C
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3814
    return v0

    .line 3811
    .end local v3    # "nowChar":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3817
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isWhitespace(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 3843
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3844
    return v0

    .line 3846
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3847
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3848
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3849
    return v0

    .line 3847
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3852
    .end local v2    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4318
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4336
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4355
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4356
    const/4 v0, 0x0

    return-object v0

    .line 4358
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4359
    return-object v1

    .line 4361
    :cond_1
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/xutils/commons/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v1, v1, v3}, Lcn/xutils/commons/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4379
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-nez p0, :cond_0

    .line 4380
    const/4 v0, 0x0

    return-object v0

    .line 4382
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4383
    return-object v1

    .line 4385
    :cond_1
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of(Ljava/util/Iterator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v1, v1, v3}, Lcn/xutils/commons/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static join(Ljava/util/List;CII)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;CII)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4415
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4416
    const/4 v0, 0x0

    return-object v0

    .line 4418
    :cond_0
    sub-int v0, p3, p2

    .line 4419
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4420
    const-string v1, ""

    return-object v1

    .line 4422
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4423
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lcn/xutils/commons/StringUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4453
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 4454
    const/4 v0, 0x0

    return-object v0

    .line 4456
    :cond_0
    sub-int v0, p3, p2

    .line 4457
    .local v0, "noOfItems":I
    if-gtz v0, :cond_1

    .line 4458
    const-string v1, ""

    return-object v1

    .line 4460
    :cond_1
    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 4461
    .local v1, "subList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, p1}, Lcn/xutils/commons/StringUtils;->join(Ljava/util/Iterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join([BC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "delimiter"    # C

    .line 3952
    if-nez p0, :cond_0

    .line 3953
    const/4 v0, 0x0

    return-object v0

    .line 3955
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([BCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([BCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [B
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3988
    if-nez p0, :cond_0

    .line 3989
    const/4 v0, 0x0

    return-object v0

    .line 3991
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 3992
    const-string v0, ""

    return-object v0

    .line 3994
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3995
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 3996
    aget-byte v2, p0, v1

    .line 3997
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3998
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4000
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([CC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "delimiter"    # C

    .line 4027
    if-nez p0, :cond_0

    .line 4028
    const/4 v0, 0x0

    return-object v0

    .line 4030
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([CCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([CCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [C
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4063
    if-nez p0, :cond_0

    .line 4064
    const/4 v0, 0x0

    return-object v0

    .line 4066
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4067
    const-string v0, ""

    return-object v0

    .line 4069
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4070
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4071
    aget-char v2, p0, v1

    .line 4072
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4073
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4070
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4075
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([DC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "delimiter"    # C

    .line 4102
    if-nez p0, :cond_0

    .line 4103
    const/4 v0, 0x0

    return-object v0

    .line 4105
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([DCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([DCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [D
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4138
    if-nez p0, :cond_0

    .line 4139
    const/4 v0, 0x0

    return-object v0

    .line 4141
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4142
    const-string v0, ""

    return-object v0

    .line 4144
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4145
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4146
    aget-wide v2, p0, v1

    .line 4147
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4148
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4150
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([FC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "delimiter"    # C

    .line 4177
    if-nez p0, :cond_0

    .line 4178
    const/4 v0, 0x0

    return-object v0

    .line 4180
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([FCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([FCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [F
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4213
    if-nez p0, :cond_0

    .line 4214
    const/4 v0, 0x0

    return-object v0

    .line 4216
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4217
    const-string v0, ""

    return-object v0

    .line 4219
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4220
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4221
    aget v2, p0, v1

    .line 4222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4223
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4220
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4225
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([IC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "separator"    # C

    .line 4252
    if-nez p0, :cond_0

    .line 4253
    const/4 v0, 0x0

    return-object v0

    .line 4255
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([ICII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([ICII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [I
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4288
    if-nez p0, :cond_0

    .line 4289
    const/4 v0, 0x0

    return-object v0

    .line 4291
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4292
    const-string v0, ""

    return-object v0

    .line 4294
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4295
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4296
    aget v2, p0, v1

    .line 4297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4298
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4300
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([JC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "separator"    # C

    .line 4489
    if-nez p0, :cond_0

    .line 4490
    const/4 v0, 0x0

    return-object v0

    .line 4492
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([JCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([JCII)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [J
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4525
    if-nez p0, :cond_0

    .line 4526
    const/4 v0, 0x0

    return-object v0

    .line 4528
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4529
    const-string v0, ""

    return-object v0

    .line 4531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4532
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4533
    aget-wide v2, p0, v1

    .line 4534
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4535
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4537
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs join([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 4765
    .local p0, "elements":[Ljava/lang/Object;, "[TT;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # C

    .line 4563
    if-nez p0, :cond_0

    .line 4564
    const/4 v0, 0x0

    return-object v0

    .line 4566
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;CII)Ljava/lang/String;
    .locals 1
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4596
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;

    .line 4623
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v0, v1, v2}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4662
    if-eqz p0, :cond_0

    .line 4663
    nop

    .line 4662
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->skip(J)Ljava/util/stream/Stream;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 4663
    const-string v2, ""

    invoke-static {p1, v2, v2, v1}, Lcn/xutils/commons/stream/LangCollectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4662
    :goto_0
    return-object v0
.end method

.method public static join([SC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "delimiter"    # C

    .line 4690
    if-nez p0, :cond_0

    .line 4691
    const/4 v0, 0x0

    return-object v0

    .line 4693
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([SCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([SCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [S
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 4726
    if-nez p0, :cond_0

    .line 4727
    const/4 v0, 0x0

    return-object v0

    .line 4729
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 4730
    const-string v0, ""

    return-object v0

    .line 4732
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4733
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 4734
    aget-short v2, p0, v1

    .line 4735
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4736
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4738
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join([ZC)Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Z
    .param p1, "delimiter"    # C

    .line 3878
    if-nez p0, :cond_0

    .line 3879
    const/4 v0, 0x0

    return-object v0

    .line 3881
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->join([ZCII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([ZCII)Ljava/lang/String;
    .locals 3
    .param p0, "array"    # [Z
    .param p1, "delimiter"    # C
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 3913
    if-nez p0, :cond_0

    .line 3914
    const/4 v0, 0x0

    return-object v0

    .line 3916
    :cond_0
    sub-int v0, p3, p2

    if-gtz v0, :cond_1

    .line 3917
    const-string v0, ""

    return-object v0

    .line 3919
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x5

    array-length v2, p0

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3920
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 3921
    aget-boolean v2, p0, v1

    .line 3922
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3923
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3920
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3925
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs joinWith(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/Object;

    .line 4789
    if-eqz p1, :cond_0

    .line 4792
    invoke-static {p1, p0}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4790
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object varargs must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$stripAll$0([Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;
    .param p2, "i"    # I

    .line 8198
    aget-object v0, p0, p2

    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I

    .line 4899
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4900
    const/4 v0, -0x1

    return v0

    .line 4902
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;II)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchChar"    # I
    .param p2, "startPos"    # I

    .line 4950
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4951
    const/4 v0, -0x1

    return v0

    .line 4953
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;

    .line 4819
    if-nez p0, :cond_0

    .line 4820
    const/4 v0, -0x1

    return v0

    .line 4822
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "seq"    # Ljava/lang/CharSequence;
    .param p1, "searchSeq"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 4861
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public static varargs lastIndexOfAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStrs"    # [Ljava/lang/CharSequence;

    .line 4983
    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 4986
    :cond_0
    const/4 v0, -0x1

    .line 4988
    .local v0, "ret":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 4989
    .local v3, "search":Ljava/lang/CharSequence;
    if-nez v3, :cond_1

    .line 4990
    goto :goto_1

    .line 4992
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v3, v4}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    .line 4993
    .local v4, "tmp":I
    if-le v4, v0, :cond_2

    .line 4994
    move v0, v4

    .line 4988
    .end local v3    # "search":Ljava/lang/CharSequence;
    .end local v4    # "tmp":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4997
    :cond_3
    return v0

    .line 4984
    .end local v0    # "ret":I
    :cond_4
    :goto_2
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;

    .line 5024
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5027
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 5025
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static lastIndexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 10
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "startPos"    # I

    .line 5063
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 5066
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 5067
    .local v7, "searchStrLength":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 5068
    .local v8, "strLength":I
    sub-int v1, v8, v7

    if-le p2, v1, :cond_1

    .line 5069
    sub-int p2, v8, v7

    .line 5071
    :cond_1
    if-gez p2, :cond_2

    .line 5072
    return v0

    .line 5074
    :cond_2
    if-nez v7, :cond_3

    .line 5075
    return p2

    .line 5078
    :cond_3
    move v1, p2

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_5

    .line 5079
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v3, v9

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5080
    return v9

    .line 5078
    :cond_4
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 5083
    .end local v9    # "i":I
    :cond_5
    return v0

    .line 5064
    .end local v7    # "searchStrLength":I
    .end local v8    # "strLength":I
    :cond_6
    :goto_1
    return v0
.end method

.method public static lastOrdinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 5121
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method public static left(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 5145
    if-nez p0, :cond_0

    .line 5146
    const/4 v0, 0x0

    return-object v0

    .line 5148
    :cond_0
    if-gez p1, :cond_1

    .line 5149
    const-string v0, ""

    return-object v0

    .line 5151
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 5152
    return-object p0

    .line 5154
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 5177
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static leftPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 5202
    if-nez p0, :cond_0

    .line 5203
    const/4 v0, 0x0

    return-object v0

    .line 5205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 5206
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 5207
    return-object p0

    .line 5209
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 5210
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 5212
    :cond_2
    invoke-static {p2, v0}, Lcn/xutils/commons/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 5239
    if-nez p0, :cond_0

    .line 5240
    const/4 v0, 0x0

    return-object v0

    .line 5242
    :cond_0
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5243
    const-string p2, " "

    .line 5245
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 5246
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 5247
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 5248
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 5249
    return-object p0

    .line 5251
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 5252
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5255
    :cond_3
    if-ne v2, v0, :cond_4

    .line 5256
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5258
    :cond_4
    if-ge v2, v0, :cond_5

    .line 5259
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 5261
    :cond_5
    new-array v3, v2, [C

    .line 5262
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 5263
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 5264
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 5263
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5266
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v5, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 5281
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static lowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 5304
    if-nez p0, :cond_0

    .line 5305
    const/4 v0, 0x0

    return-object v0

    .line 5307
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static lowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 5327
    if-nez p0, :cond_0

    .line 5328
    const/4 v0, 0x0

    return-object v0

    .line 5330
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static matches(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[I
    .locals 14
    .param p0, "first"    # Ljava/lang/CharSequence;
    .param p1, "second"    # Ljava/lang/CharSequence;

    .line 5336
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 5337
    move-object v0, p0

    .line 5338
    .local v0, "max":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "min":Ljava/lang/CharSequence;
    goto :goto_0

    .line 5340
    .end local v0    # "max":Ljava/lang/CharSequence;
    .end local v1    # "min":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    .line 5341
    .restart local v0    # "max":Ljava/lang/CharSequence;
    move-object v1, p0

    .line 5343
    .restart local v1    # "min":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5344
    .local v2, "range":I
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v5, v5, [I

    .line 5345
    .local v5, "matchIndexes":[I
    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 5346
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    new-array v7, v7, [Z

    .line 5347
    .local v7, "matchFlags":[Z
    const/4 v8, 0x0

    .line 5348
    .local v8, "matches":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 5349
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 5350
    .local v10, "c1":C
    sub-int v11, v9, v2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .local v11, "xi":I
    add-int v12, v9, v2

    add-int/2addr v12, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    .local v12, "xn":I
    :goto_2
    if-ge v11, v12, :cond_2

    .line 5351
    aget-boolean v13, v7, v11

    if-nez v13, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ne v10, v13, :cond_1

    .line 5352
    aput v11, v5, v9

    .line 5353
    aput-boolean v3, v7, v11

    .line 5354
    add-int/lit8 v8, v8, 0x1

    .line 5355
    goto :goto_3

    .line 5350
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 5348
    .end local v10    # "c1":C
    .end local v11    # "xi":I
    .end local v12    # "xn":I
    :cond_2
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5359
    .end local v9    # "mi":I
    :cond_3
    new-array v3, v8, [C

    .line 5360
    .local v3, "ms1":[C
    new-array v4, v8, [C

    .line 5361
    .local v4, "ms2":[C
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "si":I
    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 5362
    aget v11, v5, v9

    if-eq v11, v6, :cond_4

    .line 5363
    invoke-interface {v1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    aput-char v11, v3, v10

    .line 5364
    add-int/lit8 v10, v10, 0x1

    .line 5361
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 5367
    .end local v9    # "i":I
    .end local v10    # "si":I
    :cond_5
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v9, 0x0

    .local v9, "si":I
    :goto_5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v6, v10, :cond_7

    .line 5368
    aget-boolean v10, v7, v6

    if-eqz v10, :cond_6

    .line 5369
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    aput-char v10, v4, v9

    .line 5370
    add-int/lit8 v9, v9, 0x1

    .line 5367
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 5373
    .end local v6    # "i":I
    .end local v9    # "si":I
    :cond_7
    const/4 v6, 0x0

    .line 5374
    .local v6, "transpositions":I
    const/4 v9, 0x0

    .local v9, "mi":I
    :goto_6
    array-length v10, v3

    if-ge v9, v10, :cond_9

    .line 5375
    aget-char v10, v3, v9

    aget-char v11, v4, v9

    if-eq v10, v11, :cond_8

    .line 5376
    add-int/lit8 v6, v6, 0x1

    .line 5374
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 5379
    .end local v9    # "mi":I
    :cond_9
    const/4 v9, 0x0

    .line 5380
    .local v9, "prefix":I
    const/4 v10, 0x0

    .local v10, "mi":I
    :goto_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-ge v10, v11, :cond_b

    .line 5381
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-eq v11, v12, :cond_a

    .line 5382
    goto :goto_8

    .line 5384
    :cond_a
    add-int/lit8 v9, v9, 0x1

    .line 5380
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 5386
    .end local v10    # "mi":I
    :cond_b
    :goto_8
    div-int/lit8 v10, v6, 0x2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    filled-new-array {v8, v10, v9, v11}, [I

    move-result-object v10

    return-object v10
.end method

.method public static mid(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "len"    # I

    .line 5415
    if-nez p0, :cond_0

    .line 5416
    const/4 v0, 0x0

    return-object v0

    .line 5418
    :cond_0
    if-ltz p2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 5421
    :cond_1
    if-gez p1, :cond_2

    .line 5422
    const/4 p1, 0x0

    .line 5424
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v1, p1, p2

    if-gt v0, v1, :cond_3

    .line 5425
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5427
    :cond_3
    add-int v0, p1, p2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5419
    :cond_4
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static normalizeSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;

    .line 5473
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5474
    return-object p0

    .line 5476
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5477
    .local v0, "size":I
    new-array v1, v0, [C

    .line 5478
    .local v1, "newChars":[C
    const/4 v2, 0x0

    .line 5479
    .local v2, "count":I
    const/4 v3, 0x0

    .line 5480
    .local v3, "whitespacesCount":I
    const/4 v4, 0x1

    .line 5481
    .local v4, "startWhitespaces":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v0, :cond_4

    .line 5482
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 5483
    .local v7, "actualChar":C
    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    .line 5484
    .local v8, "isWhitespace":Z
    if-eqz v8, :cond_2

    .line 5485
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 5486
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "count":I
    .local v9, "count":I
    const-string v10, " "

    invoke-virtual {v10, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v1, v2

    move v2, v9

    .line 5488
    .end local v9    # "count":I
    .restart local v2    # "count":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5490
    :cond_2
    const/4 v4, 0x0

    .line 5491
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    const/16 v9, 0xa0

    if-ne v7, v9, :cond_3

    const/16 v9, 0x20

    goto :goto_1

    :cond_3
    move v9, v7

    :goto_1
    aput-char v9, v1, v2

    .line 5492
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    .line 5481
    .end local v6    # "count":I
    .end local v7    # "actualChar":C
    .end local v8    # "isWhitespace":Z
    .restart local v2    # "count":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5495
    .end local v5    # "i":I
    :cond_4
    if-eqz v4, :cond_5

    .line 5496
    const-string v5, ""

    return-object v5

    .line 5498
    :cond_5
    new-instance v5, Ljava/lang/String;

    if-lez v3, :cond_6

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    sub-int v7, v2, v7

    invoke-direct {v5, v1, v6, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I

    .line 5552
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static ordinalIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)I
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "searchStr"    # Ljava/lang/CharSequence;
    .param p2, "ordinal"    # I
    .param p3, "lastIndex"    # Z

    .line 5571
    const/4 v0, -0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-gtz p2, :cond_0

    goto :goto_2

    .line 5574
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 5575
    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5577
    :cond_2
    const/4 v1, 0x0

    .line 5580
    .local v1, "found":I
    if-eqz p3, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5582
    .local v0, "index":I
    :cond_3
    if-eqz p3, :cond_4

    .line 5583
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lcn/xutils/commons/CharSequenceUtils;->lastIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_1

    .line 5585
    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, p1, v2}, Lcn/xutils/commons/CharSequenceUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    .line 5587
    :goto_1
    if-gez v0, :cond_5

    .line 5588
    return v0

    .line 5590
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 5591
    if-lt v1, p2, :cond_3

    .line 5592
    return v0

    .line 5572
    .end local v0    # "index":I
    .end local v1    # "found":I
    :cond_6
    :goto_2
    return v0
.end method

.method public static overlay(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "overlay"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 5625
    if-nez p0, :cond_0

    .line 5626
    const/4 v0, 0x0

    return-object v0

    .line 5628
    :cond_0
    if-nez p1, :cond_1

    .line 5629
    const-string p1, ""

    .line 5631
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 5632
    .local v0, "len":I
    if-gez p2, :cond_2

    .line 5633
    const/4 p2, 0x0

    .line 5635
    :cond_2
    if-le p2, v0, :cond_3

    .line 5636
    move p2, v0

    .line 5638
    :cond_3
    if-gez p3, :cond_4

    .line 5639
    const/4 p3, 0x0

    .line 5641
    :cond_4
    if-le p3, v0, :cond_5

    .line 5642
    move p3, v0

    .line 5644
    :cond_5
    if-le p2, p3, :cond_6

    .line 5645
    move v1, p2

    .line 5646
    .local v1, "temp":I
    move p2, p3

    .line 5647
    move p3, v1

    .line 5649
    .end local v1    # "temp":I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5651
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5649
    return-object v1
.end method

.method private static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z
    .param p3, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5666
    if-eqz p0, :cond_3

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0, p1, p2}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5669
    :cond_0
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5670
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    .line 5671
    .local v2, "p":Ljava/lang/CharSequence;
    invoke-static {p0, v2, p2}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5672
    return-object p0

    .line 5670
    .end local v2    # "p":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5676
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5667
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static varargs prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5714
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs prependIfMissingIgnoreCase(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "prefixes"    # [Ljava/lang/CharSequence;

    .line 5752
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcn/xutils/commons/StringUtils;->prependIfMissing(Ljava/lang/String;Ljava/lang/CharSequence;Z[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 5775
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 5778
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 5779
    .local v0, "chars":[C
    const/4 v1, 0x0

    .line 5780
    .local v1, "pos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 5781
    aget-char v3, v0, v2

    if-eq v3, p1, :cond_1

    .line 5782
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "pos":I
    .local v3, "pos":I
    aget-char v4, v0, v2

    aput-char v4, v0, v1

    move v1, v3

    .line 5780
    .end local v3    # "pos":I
    .restart local v1    # "pos":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5785
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    return-object v2

    .line 5776
    .end local v0    # "chars":[C
    .end local v1    # "pos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static remove(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5812
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5815
    :cond_0
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5813
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5865
    invoke-static {p0, p1}, Lcn/xutils/commons/RegExUtils;->removeAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5893
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5896
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5897
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5899
    :cond_1
    return-object p0

    .line 5894
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeEndIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 5929
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5932
    :cond_0
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->endsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5933
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5935
    :cond_1
    return-object p0

    .line 5930
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5984
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6019
    const-string v0, ""

    const/4 v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6055
    invoke-static {p0, p1}, Lcn/xutils/commons/RegExUtils;->removePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # C

    .line 6082
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6083
    return-object p0

    .line 6085
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static removeStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6113
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6116
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6119
    :cond_1
    return-object p0

    .line 6114
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static removeStartIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "remove"    # Ljava/lang/String;

    .line 6148
    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6149
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6151
    :cond_0
    return-object p0
.end method

.method public static repeat(CI)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C
    .param p1, "repeat"    # I

    .line 6177
    if-gtz p1, :cond_0

    .line 6178
    const-string v0, ""

    return-object v0

    .line 6180
    :cond_0
    new-array v0, p1, [C

    .line 6181
    .local v0, "buf":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 6182
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "repeat"    # I

    .line 6205
    if-nez p0, :cond_0

    .line 6206
    const/4 v0, 0x0

    return-object v0

    .line 6208
    :cond_0
    if-gtz p1, :cond_1

    .line 6209
    const-string v0, ""

    return-object v0

    .line 6211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 6212
    .local v0, "inputLength":I
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    if-nez v0, :cond_2

    goto :goto_2

    .line 6215
    :cond_2
    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    const/16 v3, 0x2000

    if-gt p1, v3, :cond_3

    .line 6216
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lcn/xutils/commons/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6219
    :cond_3
    mul-int v3, v0, p1

    .line 6220
    .local v3, "outputLength":I
    packed-switch v0, :pswitch_data_0

    .line 6233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6234
    .local v1, "buf":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_1

    .line 6224
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :pswitch_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 6225
    .local v2, "ch0":C
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 6226
    .local v1, "ch1":C
    new-array v4, v3, [C

    .line 6227
    .local v4, "output2":[C
    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, -0x2

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_4

    .line 6228
    aput-char v2, v4, v5

    .line 6229
    add-int/lit8 v6, v5, 0x1

    aput-char v1, v4, v6

    .line 6227
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 6231
    .end local v5    # "i":I
    :cond_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 6222
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    .end local v4    # "output2":[C
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1}, Lcn/xutils/commons/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6234
    .local v1, "buf":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_1
    if-ge v2, p1, :cond_5

    .line 6235
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6237
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6213
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v3    # "outputLength":I
    :cond_6
    :goto_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static repeat(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "repeat"    # I

    .line 6262
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcn/xutils/commons/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 6267
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->removeEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 6263
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lcn/xutils/commons/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6294
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 6326
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/xutils/commons/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I
    .param p4, "ignoreCase"    # Z

    .line 6361
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    if-nez p3, :cond_0

    goto :goto_5

    .line 6364
    :cond_0
    if-eqz p4, :cond_1

    .line 6365
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 6367
    :cond_1
    const/4 v0, 0x0

    .line 6368
    .local v0, "start":I
    if-eqz p4, :cond_2

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 6369
    .local v1, "end":I
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 6370
    return-object p0

    .line 6372
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 6373
    .local v3, "replLength":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 6374
    .local v4, "increase":I
    if-gez p3, :cond_4

    const/16 v5, 0x10

    goto :goto_1

    :cond_4
    const/16 v5, 0x40

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    mul-int/2addr v4, v5

    .line 6375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6376
    .local v5, "buf":Ljava/lang/StringBuilder;
    :goto_2
    if-eq v1, v2, :cond_7

    .line 6377
    invoke-virtual {v5, p0, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6378
    add-int v0, v1, v3

    .line 6379
    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_5

    .line 6380
    goto :goto_4

    .line 6382
    :cond_5
    if-eqz p4, :cond_6

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->indexOfIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    goto :goto_3

    :cond_6
    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v6

    :goto_3
    move v1, v6

    goto :goto_2

    .line 6384
    :cond_7
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, p0, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 6385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 6362
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v3    # "replLength":I
    .end local v4    # "increase":I
    .end local v5    # "buf":Ljava/lang/StringBuilder;
    :cond_8
    :goto_5
    return-object p0
.end method

.method public static replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6440
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/RegExUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChar"    # C
    .param p2, "replaceChar"    # C

    .line 6464
    if-nez p0, :cond_0

    .line 6465
    const/4 v0, 0x0

    return-object v0

    .line 6467
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceChars(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "searchChars"    # Ljava/lang/String;
    .param p2, "replaceChars"    # Ljava/lang/String;

    .line 6507
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 6510
    :cond_0
    if-nez p2, :cond_1

    .line 6511
    const-string p2, ""

    .line 6513
    :cond_1
    const/4 v0, 0x0

    .line 6514
    .local v0, "modified":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 6515
    .local v1, "replaceCharsLength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6516
    .local v2, "strLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6517
    .local v3, "buf":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 6518
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 6519
    .local v5, "ch":C
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6520
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 6521
    const/4 v0, 0x1

    .line 6522
    if-ge v6, v1, :cond_3

    .line 6523
    invoke-virtual {p2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6526
    :cond_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6517
    .end local v5    # "ch":C
    .end local v6    # "index":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6529
    .end local v4    # "i":I
    :cond_4
    if-eqz v0, :cond_5

    .line 6530
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 6532
    :cond_5
    return-object p0

    .line 6508
    .end local v0    # "modified":Z
    .end local v1    # "replaceCharsLength":I
    .end local v2    # "strLength":I
    .end local v3    # "buf":Ljava/lang/StringBuilder;
    :cond_6
    :goto_2
    return-object p0
.end method

.method public static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 6573
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcn/xutils/commons/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 17
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;
    .param p3, "repeat"    # Z
    .param p4, "timeToLive"    # I

    .line 6631
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    if-gez v4, :cond_1

    .line 6632
    new-instance v5, Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6633
    .local v5, "searchSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 6634
    .local v6, "replacementSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v6}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 6635
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 6636
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Aborting to protect against StackOverflowError - output of one loop is the input of another"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 6641
    .end local v5    # "searchSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "replacementSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    invoke-static/range {p0 .. p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p1 .. p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p2 .. p2}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static/range {p1 .. p1}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_2

    if-ne v4, v6, :cond_2

    goto/16 :goto_a

    .line 6645
    :cond_2
    array-length v5, v1

    .line 6646
    .local v5, "searchLength":I
    array-length v7, v2

    .line 6649
    .local v7, "replacementLength":I
    if-ne v5, v7, :cond_16

    .line 6657
    new-array v8, v5, [Z

    .line 6660
    .local v8, "noMoreMatchesForReplIndex":[Z
    const/4 v9, -0x1

    .line 6661
    .local v9, "textIndex":I
    const/4 v10, -0x1

    .line 6666
    .local v10, "replaceIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/4 v12, 0x1

    if-ge v11, v5, :cond_7

    .line 6667
    aget-boolean v13, v8, v11

    if-nez v13, :cond_6

    aget-object v13, v1, v11

    invoke-static {v13}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    aget-object v13, v2, v11

    if-nez v13, :cond_3

    .line 6668
    goto :goto_2

    .line 6670
    :cond_3
    aget-object v13, v1, v11

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 6673
    .local v13, "tempIndex":I
    if-ne v13, v6, :cond_4

    .line 6674
    aput-boolean v12, v8, v11

    goto :goto_2

    .line 6675
    :cond_4
    if-eq v9, v6, :cond_5

    if-ge v13, v9, :cond_6

    .line 6676
    :cond_5
    move v9, v13

    .line 6677
    move v10, v11

    .line 6666
    .end local v13    # "tempIndex":I
    :cond_6
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6683
    .end local v11    # "i":I
    :cond_7
    if-ne v9, v6, :cond_8

    .line 6684
    return-object v0

    .line 6687
    :cond_8
    const/4 v11, 0x0

    .line 6690
    .local v11, "start":I
    const/4 v13, 0x0

    .line 6693
    .local v13, "increase":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    array-length v15, v1

    if-ge v14, v15, :cond_b

    .line 6694
    aget-object v15, v1, v14

    if-eqz v15, :cond_a

    aget-object v15, v2, v14

    if-nez v15, :cond_9

    .line 6695
    goto :goto_4

    .line 6697
    :cond_9
    aget-object v15, v2, v14

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v16, v1, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v15, v15, v16

    .line 6698
    .local v15, "greater":I
    if-lez v15, :cond_a

    .line 6699
    mul-int/lit8 v16, v15, 0x3

    add-int v13, v13, v16

    .line 6693
    .end local v15    # "greater":I
    :cond_a
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 6703
    .end local v14    # "i":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    div-int/lit8 v14, v14, 0x5

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 6705
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v15, v13

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6707
    .local v14, "buf":Ljava/lang/StringBuilder;
    :goto_5
    if-eq v9, v6, :cond_13

    .line 6709
    move v15, v11

    .local v15, "i":I
    :goto_6
    if-ge v15, v9, :cond_c

    .line 6710
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6709
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x1

    goto :goto_6

    .line 6712
    .end local v15    # "i":I
    :cond_c
    aget-object v12, v2, v10

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6714
    aget-object v12, v1, v10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v11, v9, v12

    .line 6716
    const/4 v9, -0x1

    .line 6717
    const/4 v10, -0x1

    .line 6720
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v5, :cond_12

    .line 6721
    aget-boolean v15, v8, v12

    if-nez v15, :cond_10

    aget-object v15, v1, v12

    invoke-static {v15}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    aget-object v15, v2, v12

    if-nez v15, :cond_d

    .line 6722
    const/16 v16, 0x1

    goto :goto_8

    .line 6724
    :cond_d
    aget-object v15, v1, v12

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 6727
    .local v15, "tempIndex":I
    if-ne v15, v6, :cond_e

    .line 6728
    const/16 v16, 0x1

    aput-boolean v16, v8, v12

    goto :goto_8

    .line 6729
    :cond_e
    const/16 v16, 0x1

    if-eq v9, v6, :cond_f

    if-ge v15, v9, :cond_11

    .line 6730
    :cond_f
    move v9, v15

    .line 6731
    move v10, v12

    goto :goto_8

    .line 6721
    .end local v15    # "tempIndex":I
    :cond_10
    const/16 v16, 0x1

    .line 6720
    :cond_11
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_12
    const/16 v16, 0x1

    move/from16 v12, v16

    .end local v12    # "i":I
    goto :goto_5

    .line 6737
    :cond_13
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 6738
    .local v6, "textLength":I
    move v12, v11

    .restart local v12    # "i":I
    :goto_9
    if-ge v12, v6, :cond_14

    .line 6739
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6738
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 6741
    .end local v12    # "i":I
    :cond_14
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 6742
    .local v12, "result":Ljava/lang/String;
    if-nez v3, :cond_15

    .line 6743
    return-object v12

    .line 6746
    :cond_15
    add-int/lit8 v15, v4, -0x1

    invoke-static {v12, v1, v2, v3, v15}, Lcn/xutils/commons/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v15

    return-object v15

    .line 6650
    .end local v6    # "textLength":I
    .end local v8    # "noMoreMatchesForReplIndex":[Z
    .end local v9    # "textIndex":I
    .end local v10    # "replaceIndex":I
    .end local v11    # "start":I
    .end local v12    # "result":Ljava/lang/String;
    .end local v13    # "increase":I
    .end local v14    # "buf":Ljava/lang/StringBuilder;
    :cond_16
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Search and Replace array lengths don\'t match: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 6642
    .end local v5    # "searchLength":I
    .end local v7    # "replacementLength":I
    :cond_17
    :goto_a
    return-object v0
.end method

.method public static replaceEachRepeatedly(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchList"    # [Ljava/lang/String;
    .param p2, "replacementList"    # [Ljava/lang/String;

    .line 6790
    const/4 v0, 0x1

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0, p1, p2, v0, v1}, Lcn/xutils/commons/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6843
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/RegExUtils;->replaceFirst(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6871
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .param p3, "max"    # I

    .line 6904
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcn/xutils/commons/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6931
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceOnceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "searchString"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 6960
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->replaceIgnoreCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7006
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/RegExUtils;->replacePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7024
    if-nez p0, :cond_0

    .line 7025
    const/4 v0, 0x0

    return-object v0

    .line 7027
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reverseDelimited(Ljava/lang/String;C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7050
    if-nez p0, :cond_0

    .line 7051
    const/4 v0, 0x0

    return-object v0

    .line 7055
    :cond_0
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    .line 7056
    .local v0, "strs":[Ljava/lang/String;
    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->reverse([Ljava/lang/Object;)V

    .line 7057
    invoke-static {v0, p1}, Lcn/xutils/commons/StringUtils;->join([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static right(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "len"    # I

    .line 7081
    if-nez p0, :cond_0

    .line 7082
    const/4 v0, 0x0

    return-object v0

    .line 7084
    :cond_0
    if-gez p1, :cond_1

    .line 7085
    const-string v0, ""

    return-object v0

    .line 7087
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_2

    .line 7088
    return-object p0

    .line 7090
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I

    .line 7113
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rightPad(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padChar"    # C

    .line 7138
    if-nez p0, :cond_0

    .line 7139
    const/4 v0, 0x0

    return-object v0

    .line 7141
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    .line 7142
    .local v0, "pads":I
    if-gtz v0, :cond_1

    .line 7143
    return-object p0

    .line 7145
    :cond_1
    const/16 v1, 0x2000

    if-le v0, v1, :cond_2

    .line 7146
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcn/xutils/commons/StringUtils;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 7148
    :cond_2
    invoke-static {p2, v0}, Lcn/xutils/commons/StringUtils;->repeat(CI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "padStr"    # Ljava/lang/String;

    .line 7175
    if-nez p0, :cond_0

    .line 7176
    const/4 v0, 0x0

    return-object v0

    .line 7178
    :cond_0
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7179
    const-string p2, " "

    .line 7181
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 7182
    .local v0, "padLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7183
    .local v1, "strLen":I
    sub-int v2, p1, v1

    .line 7184
    .local v2, "pads":I
    if-gtz v2, :cond_2

    .line 7185
    return-object p0

    .line 7187
    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    const/16 v4, 0x2000

    if-gt v2, v4, :cond_3

    .line 7188
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p0, p1, v3}, Lcn/xutils/commons/StringUtils;->rightPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7191
    :cond_3
    if-ne v2, v0, :cond_4

    .line 7192
    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7194
    :cond_4
    if-ge v2, v0, :cond_5

    .line 7195
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7197
    :cond_5
    new-array v3, v2, [C

    .line 7198
    .local v3, "padding":[C
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 7199
    .local v4, "padChars":[C
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 7200
    rem-int v6, v5, v0

    aget-char v6, v4, v6

    aput-char v6, v3, v5

    .line 7199
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7202
    .end local v5    # "i":I
    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static rotate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "shift"    # I

    .line 7232
    if-nez p0, :cond_0

    .line 7233
    const/4 v0, 0x0

    return-object v0

    .line 7236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7237
    .local v0, "strLen":I
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    rem-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 7241
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7242
    .local v1, "builder":Ljava/lang/StringBuilder;
    rem-int v2, p1, v0

    neg-int v2, v2

    .line 7243
    .local v2, "offset":I
    invoke-static {p0, v2}, Lcn/xutils/commons/StringUtils;->substring(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7244
    const/4 v3, 0x0

    invoke-static {p0, v3, v2}, Lcn/xutils/commons/StringUtils;->substring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 7238
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "offset":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 7271
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7299
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 7328
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7362
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByCharacterType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7385
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "camelCase"    # Z

    .line 7403
    if-nez p0, :cond_0

    .line 7404
    const/4 v0, 0x0

    return-object v0

    .line 7406
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7407
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 7409
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 7410
    .local v0, "c":[C
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7411
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 7412
    .local v2, "tokenStart":I
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v3

    .line 7413
    .local v3, "currentType":I
    add-int/lit8 v4, v2, 0x1

    .local v4, "pos":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 7414
    aget-char v5, v0, v4

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v5

    .line 7415
    .local v5, "type":I
    if-ne v5, v3, :cond_2

    .line 7416
    goto :goto_2

    .line 7418
    :cond_2
    if-eqz p1, :cond_4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 7419
    add-int/lit8 v6, v4, -0x1

    .line 7420
    .local v6, "newTokenStart":I
    if-eq v6, v2, :cond_3

    .line 7421
    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v2

    invoke-direct {v7, v0, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7422
    move v2, v6

    .line 7424
    .end local v6    # "newTokenStart":I
    :cond_3
    goto :goto_1

    .line 7425
    :cond_4
    new-instance v6, Ljava/lang/String;

    sub-int v7, v4, v2

    invoke-direct {v6, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7426
    move v2, v4

    .line 7428
    :goto_1
    move v3, v5

    .line 7413
    .end local v5    # "type":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7430
    .end local v4    # "pos":I
    :cond_5
    new-instance v4, Ljava/lang/String;

    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-direct {v4, v0, v2, v5}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7431
    sget-object v4, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public static splitByCharacterTypeCamelCase(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 7459
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->splitByCharacterType(Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 7486
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparator(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7517
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 7546
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitByWholeSeparatorPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7579
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitByWholeSeparatorWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 8
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 7598
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 7599
    return-object v0

    .line 7602
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 7604
    .local v1, "len":I
    if-nez v1, :cond_1

    .line 7605
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 7608
    :cond_1
    if-eqz p1, :cond_9

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 7613
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 7615
    .local v0, "separatorLength":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7616
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 7617
    .local v4, "numberOfSubstrings":I
    const/4 v5, 0x0

    .line 7618
    .local v5, "beg":I
    const/4 v6, 0x0

    .line 7619
    .local v6, "end":I
    :goto_0
    if-ge v6, v1, :cond_8

    .line 7620
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 7622
    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    .line 7623
    if-le v6, v5, :cond_4

    .line 7624
    add-int/lit8 v4, v4, 0x1

    .line 7626
    if-ne v4, p2, :cond_3

    .line 7627
    move v6, v1

    .line 7628
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7632
    :cond_3
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7637
    add-int v5, v6, v0

    goto :goto_0

    .line 7641
    :cond_4
    if-eqz p3, :cond_6

    .line 7642
    add-int/lit8 v4, v4, 0x1

    .line 7643
    if-ne v4, p2, :cond_5

    .line 7644
    move v6, v1

    .line 7645
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7647
    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7650
    :cond_6
    :goto_1
    add-int v5, v6, v0

    goto :goto_0

    .line 7654
    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7655
    move v6, v1

    goto :goto_0

    .line 7659
    :cond_8
    sget-object v2, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2

    .line 7610
    .end local v0    # "separatorLength":I
    .end local v3    # "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "numberOfSubstrings":I
    .end local v5    # "beg":I
    .end local v6    # "end":I
    :cond_9
    :goto_2
    invoke-static {p0, v0, p2, p3}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 7687
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C

    .line 7723
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;

    .line 7760
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitPreserveAllTokens(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I

    .line 7800
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/StringUtils;->splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static splitWorker(Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChar"    # C
    .param p2, "preserveAllTokens"    # Z

    .line 7818
    if-nez p0, :cond_0

    .line 7819
    const/4 v0, 0x0

    return-object v0

    .line 7821
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7822
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 7823
    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 7825
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7826
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 7827
    .local v2, "i":I
    const/4 v3, 0x0

    .line 7828
    .local v3, "start":I
    const/4 v4, 0x0

    .line 7829
    .local v4, "match":Z
    const/4 v5, 0x0

    .line 7830
    .local v5, "lastMatch":Z
    :goto_0
    if-ge v2, v0, :cond_5

    .line 7831
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4

    .line 7832
    if-nez v4, :cond_2

    if-eqz p2, :cond_3

    .line 7833
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7834
    const/4 v4, 0x0

    .line 7835
    const/4 v5, 0x1

    .line 7837
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    .line 7838
    goto :goto_0

    .line 7840
    :cond_4
    const/4 v5, 0x0

    .line 7841
    const/4 v4, 0x1

    .line 7842
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7844
    :cond_5
    if-nez v4, :cond_6

    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    .line 7845
    :cond_6
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7847
    :cond_7
    sget-object v6, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static splitWorker(Ljava/lang/String;Ljava/lang/String;IZ)[Ljava/lang/String;
    .locals 10
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separatorChars"    # Ljava/lang/String;
    .param p2, "max"    # I
    .param p3, "preserveAllTokens"    # Z

    .line 7869
    if-nez p0, :cond_0

    .line 7870
    const/4 v0, 0x0

    return-object v0

    .line 7872
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 7873
    .local v0, "len":I
    if-nez v0, :cond_1

    .line 7874
    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v1

    .line 7876
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7877
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 7878
    .local v2, "sizePlus1":I
    const/4 v3, 0x0

    .line 7879
    .local v3, "i":I
    const/4 v4, 0x0

    .line 7880
    .local v4, "start":I
    const/4 v5, 0x0

    .line 7881
    .local v5, "match":Z
    const/4 v6, 0x0

    .line 7882
    .local v6, "lastMatch":Z
    const/4 v7, 0x1

    if-nez p1, :cond_6

    .line 7884
    :goto_0
    if-ge v3, v0, :cond_11

    .line 7885
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7886
    if-nez v5, :cond_2

    if-eqz p3, :cond_4

    .line 7887
    :cond_2
    const/4 v6, 0x1

    .line 7888
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_3

    .line 7889
    move v2, v0

    .line 7890
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7892
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_3
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7893
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 7895
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_4
    add-int/2addr v3, v7

    move v4, v3

    .line 7896
    goto :goto_0

    .line 7898
    :cond_5
    const/4 v6, 0x0

    .line 7899
    const/4 v5, 0x1

    .line 7900
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7902
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v7, :cond_c

    .line 7904
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 7905
    .local v8, "sep":C
    :goto_1
    if-ge v3, v0, :cond_b

    .line 7906
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    .line 7907
    if-nez v5, :cond_7

    if-eqz p3, :cond_9

    .line 7908
    :cond_7
    const/4 v6, 0x1

    .line 7909
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v9, "sizePlus1":I
    if-ne v2, p2, :cond_8

    .line 7910
    move v2, v0

    .line 7911
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7913
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_8
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7914
    const/4 v2, 0x0

    move v5, v2

    move v2, v9

    .line 7916
    .end local v9    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_9
    add-int/2addr v3, v7

    move v4, v3

    .line 7917
    goto :goto_1

    .line 7919
    :cond_a
    const/4 v6, 0x0

    .line 7920
    const/4 v5, 0x1

    .line 7921
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7923
    .end local v8    # "sep":C
    :cond_b
    goto :goto_3

    .line 7925
    :cond_c
    :goto_2
    if-ge v3, v0, :cond_11

    .line 7926
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_10

    .line 7927
    if-nez v5, :cond_d

    if-eqz p3, :cond_f

    .line 7928
    :cond_d
    const/4 v6, 0x1

    .line 7929
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "sizePlus1":I
    .local v8, "sizePlus1":I
    if-ne v2, p2, :cond_e

    .line 7930
    move v2, v0

    .line 7931
    .end local v3    # "i":I
    .local v2, "i":I
    const/4 v6, 0x0

    move v3, v2

    .line 7933
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_e
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7934
    const/4 v2, 0x0

    move v5, v2

    move v2, v8

    .line 7936
    .end local v8    # "sizePlus1":I
    .local v2, "sizePlus1":I
    :cond_f
    add-int/2addr v3, v7

    move v4, v3

    .line 7937
    goto :goto_2

    .line 7939
    :cond_10
    const/4 v6, 0x0

    .line 7940
    const/4 v5, 0x1

    .line 7941
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 7944
    :cond_11
    :goto_3
    if-nez v5, :cond_12

    if-eqz p3, :cond_13

    if-eqz v6, :cond_13

    .line 7945
    :cond_12
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7947
    :cond_13
    sget-object v7, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 7973
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method private static startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 8
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "ignoreCase"    # Z

    .line 7988
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 7992
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 7993
    .local v7, "preLen":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v7, v1, :cond_1

    .line 7994
    return v0

    .line 7996
    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move-object v4, p1

    move v6, v7

    invoke-static/range {v1 .. v6}, Lcn/xutils/commons/CharSequenceUtils;->regionMatches(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v0

    return v0

    .line 7989
    .end local v7    # "preLen":I
    :cond_2
    :goto_0
    if-ne p0, p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public static varargs startsWithAny(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 5
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "searchStrings"    # [Ljava/lang/CharSequence;

    .line 8022
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8025
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 8026
    .local v3, "searchString":Ljava/lang/CharSequence;
    invoke-static {p0, v3}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8027
    const/4 v0, 0x1

    return v0

    .line 8025
    .end local v3    # "searchString":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8030
    :cond_2
    return v1

    .line 8023
    :cond_3
    :goto_1
    return v1
.end method

.method public static startsWithIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 8056
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public static strip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 8082
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8112
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8113
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAccents(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .line 8135
    if-nez p0, :cond_0

    .line 8136
    const/4 v0, 0x0

    return-object v0

    .line 8138
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8139
    .local v0, "decomposed":Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcn/xutils/commons/StringUtils;->convertRemainingAccentCharacters(Ljava/lang/StringBuilder;)V

    .line 8141
    sget-object v1, Lcn/xutils/commons/StringUtils;->STRIP_ACCENTS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs stripAll([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "strs"    # [Ljava/lang/String;

    .line 8164
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripAll([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "strs"    # [Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8193
    invoke-static {p0}, Lcn/xutils/commons/ArrayUtils;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 8194
    .local v0, "strsLen":I
    if-nez v0, :cond_0

    .line 8195
    return-object p0

    .line 8197
    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    .line 8198
    .local v1, "newArr":[Ljava/lang/String;
    new-instance v2, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcn/xutils/commons/StringUtils$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)V

    .line 8199
    return-object v1
.end method

.method public static stripEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8228
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8229
    .local v0, "end":I
    if-nez v0, :cond_0

    .line 8230
    return-object p0

    .line 8233
    :cond_0
    if-nez p1, :cond_1

    .line 8234
    :goto_0
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8235
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8237
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8238
    return-object p0

    .line 8240
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 8241
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 8244
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stripStart(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "stripChars"    # Ljava/lang/String;

    .line 8272
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 8273
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 8274
    return-object p0

    .line 8276
    :cond_0
    const/4 v1, 0x0

    .line 8277
    .local v1, "start":I
    if-nez p1, :cond_1

    .line 8278
    :goto_0
    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8281
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8282
    return-object p0

    .line 8284
    :cond_2
    :goto_1
    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 8285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8288
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static stripToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 8314
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static stripToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 8341
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 8342
    return-object v0

    .line 8344
    :cond_0
    invoke-static {p0, v0}, Lcn/xutils/commons/StringUtils;->strip(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8345
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static substring(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 8373
    if-nez p0, :cond_0

    .line 8374
    const/4 v0, 0x0

    return-object v0

    .line 8378
    :cond_0
    if-gez p1, :cond_1

    .line 8379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 8382
    :cond_1
    if-gez p1, :cond_2

    .line 8383
    const/4 p1, 0x0

    .line 8385
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 8386
    const-string v0, ""

    return-object v0

    .line 8389
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 8428
    if-nez p0, :cond_0

    .line 8429
    const/4 v0, 0x0

    return-object v0

    .line 8433
    :cond_0
    if-gez p2, :cond_1

    .line 8434
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    .line 8436
    :cond_1
    if-gez p1, :cond_2

    .line 8437
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p1, v0

    .line 8441
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 8442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    .line 8446
    :cond_3
    if-le p1, p2, :cond_4

    .line 8447
    const-string v0, ""

    return-object v0

    .line 8450
    :cond_4
    if-gez p1, :cond_5

    .line 8451
    const/4 p1, 0x0

    .line 8453
    :cond_5
    if-gez p2, :cond_6

    .line 8454
    const/4 p2, 0x0

    .line 8457
    :cond_6
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfter(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8486
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8487
    return-object p0

    .line 8489
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8490
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8491
    const-string v1, ""

    return-object v1

    .line 8493
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringAfter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8525
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8526
    return-object p0

    .line 8528
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    .line 8529
    return-object v0

    .line 8531
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 8532
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 8533
    return-object v0

    .line 8535
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringAfterLast(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8565
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8566
    return-object p0

    .line 8568
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 8569
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 8572
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8570
    :cond_2
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static substringAfterLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8605
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8606
    return-object p0

    .line 8608
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 8609
    return-object v1

    .line 8611
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8612
    .local v0, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 8615
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8613
    :cond_3
    :goto_0
    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # I

    .line 8644
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8645
    return-object p0

    .line 8647
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 8648
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8649
    return-object p0

    .line 8651
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static substringBefore(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8682
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 8685
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8686
    const-string v0, ""

    return-object v0

    .line 8688
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8689
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 8690
    return-object p0

    .line 8692
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8683
    .end local v0    # "pos":I
    :cond_3
    :goto_0
    return-object p0
.end method

.method public static substringBeforeLast(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .line 8723
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8726
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 8727
    .local v0, "pos":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 8728
    return-object p0

    .line 8730
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8724
    .end local v0    # "pos":I
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .line 8755
    invoke-static {p0, p1, p1}, Lcn/xutils/commons/StringUtils;->substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substringBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 8786
    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ObjectUtils;->allNotNull([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 8787
    return-object v1

    .line 8789
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 8790
    .local v0, "start":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 8791
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 8792
    .local v3, "end":I
    if-eq v3, v2, :cond_1

    .line 8793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 8796
    .end local v3    # "end":I
    :cond_1
    return-object v1
.end method

.method public static substringsBetween(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "open"    # Ljava/lang/String;
    .param p2, "close"    # Ljava/lang/String;

    .line 8822
    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 8825
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 8826
    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 8827
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 8829
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 8830
    .local v2, "closeLen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 8831
    .local v3, "openLen":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 8832
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 8833
    .local v5, "pos":I
    :goto_0
    sub-int v6, v1, v2

    if-ge v5, v6, :cond_4

    .line 8834
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 8835
    .local v6, "start":I
    if-gez v6, :cond_2

    .line 8836
    goto :goto_1

    .line 8838
    :cond_2
    add-int/2addr v6, v3

    .line 8839
    invoke-virtual {p0, p2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 8840
    .local v7, "end":I
    if-gez v7, :cond_3

    .line 8841
    goto :goto_1

    .line 8843
    :cond_3
    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8844
    add-int v5, v7, v2

    .line 8845
    .end local v6    # "start":I
    .end local v7    # "end":I
    goto :goto_0

    .line 8846
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8847
    return-object v0

    .line 8849
    :cond_5
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 8823
    .end local v1    # "strLen":I
    .end local v2    # "closeLen":I
    .end local v3    # "openLen":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "pos":I
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;

    .line 8880
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8881
    return-object p0

    .line 8884
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 8885
    .local v0, "strLen":I
    new-array v1, v0, [I

    .line 8886
    .local v1, "newCodePoints":[I
    const/4 v2, 0x0

    .line 8887
    .local v2, "outOffset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_4

    .line 8888
    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    .line 8890
    .local v4, "oldCodepoint":I
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->isTitleCase(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 8892
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 8893
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    .local v5, "newCodePoint":I
    goto :goto_2

    .line 8895
    .end local v5    # "newCodePoint":I
    :cond_2
    move v5, v4

    .restart local v5    # "newCodePoint":I
    goto :goto_2

    .line 8891
    .end local v5    # "newCodePoint":I
    :cond_3
    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v5

    .line 8897
    .restart local v5    # "newCodePoint":I
    :goto_2
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outOffset":I
    .local v6, "outOffset":I
    aput v5, v1, v2

    .line 8898
    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 8899
    .end local v4    # "oldCodepoint":I
    .end local v5    # "newCodePoint":I
    move v2, v6

    goto :goto_0

    .line 8900
    .end local v3    # "i":I
    .end local v6    # "outOffset":I
    .restart local v2    # "outOffset":I
    :cond_4
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Ljava/lang/String;-><init>([III)V

    return-object v3
.end method

.method public static toCodePoints(Ljava/lang/CharSequence;)[I
    .locals 5
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 8920
    if-nez p0, :cond_0

    .line 8921
    const/4 v0, 0x0

    return-object v0

    .line 8923
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 8924
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_INT_ARRAY:[I

    return-object v0

    .line 8927
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8928
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->codePointCount(II)I

    move-result v1

    new-array v1, v1, [I

    .line 8929
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 8930
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 8931
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    aput v4, v1, v3

    .line 8932
    aget v4, v1, v3

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 8930
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8934
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method public static toEncodedString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 8951
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcn/xutils/commons/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static toRootLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 8962
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toRootUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .line 8973
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8993
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lcn/xutils/commons/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private static toStringOrEmpty(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 8997
    const-string v0, ""

    invoke-static {p0, v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9024
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9049
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static trimToNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 9075
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9076
    .local v0, "ts":Ljava/lang/String;
    invoke-static {v0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static truncate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "maxWidth"    # I

    .line 9112
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/StringUtils;->truncate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static truncate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "maxWidth"    # I

    .line 9176
    if-ltz p1, :cond_4

    .line 9179
    if-ltz p2, :cond_3

    .line 9182
    if-nez p0, :cond_0

    .line 9183
    const/4 v0, 0x0

    return-object v0

    .line 9185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 9186
    const-string v0, ""

    return-object v0

    .line 9188
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p2, :cond_2

    .line 9189
    add-int v0, p1, p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 9190
    .local v0, "ix":I
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9192
    .end local v0    # "ix":I
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9180
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxWith cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9177
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .line 9217
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 9218
    .local v0, "strLen":I
    if-nez v0, :cond_0

    .line 9219
    return-object p0

    .line 9222
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 9223
    .local v2, "firstCodePoint":I
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v3

    .line 9224
    .local v3, "newCodePoint":I
    if-ne v2, v3, :cond_1

    .line 9226
    return-object p0

    .line 9229
    :cond_1
    new-array v4, v0, [I

    .line 9230
    .local v4, "newCodePoints":[I
    const/4 v5, 0x0

    .line 9231
    .local v5, "outOffset":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "outOffset":I
    .local v6, "outOffset":I
    aput v3, v4, v5

    .line 9232
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .local v5, "inOffset":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 9233
    invoke-virtual {p0, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    .line 9234
    .local v7, "codePoint":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "outOffset":I
    .local v8, "outOffset":I
    aput v7, v4, v6

    .line 9235
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 9236
    .end local v7    # "codePoint":I
    move v6, v8

    goto :goto_0

    .line 9237
    .end local v5    # "inOffset":I
    .end local v8    # "outOffset":I
    .restart local v6    # "outOffset":I
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v1, v6}, Ljava/lang/String;-><init>([III)V

    return-object v5
.end method

.method public static unwrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapChar"    # C

    .line 9265
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9269
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_1

    .line 9270
    const/4 v0, 0x0

    .line 9271
    .local v0, "startIndex":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    .line 9273
    .local v2, "endIndex":I
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 9276
    .end local v0    # "startIndex":I
    .end local v2    # "endIndex":I
    :cond_1
    return-object p0

    .line 9266
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static unwrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapToken"    # Ljava/lang/String;

    .line 9305
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 9309
    :cond_0
    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->startsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcn/xutils/commons/StringUtils;->endsWith(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9313
    :cond_1
    return-object p0

    .line 9306
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static upperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 9336
    if-nez p0, :cond_0

    .line 9337
    const/4 v0, 0x0

    return-object v0

    .line 9339
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static upperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 9359
    if-nez p0, :cond_0

    .line 9360
    const/4 v0, 0x0

    return-object v0

    .line 9362
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # [C

    .line 9374
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static wrap(Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9398
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9402
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9399
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9434
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9438
    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9435
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # C

    .line 9467
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 9470
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    if-eq v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    .line 9471
    .local v1, "wrapStart":Z
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_2

    move v0, v2

    .line 9472
    .local v0, "wrapEnd":Z
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    .line 9473
    return-object p0

    .line 9476
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9477
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_4

    .line 9478
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9480
    :cond_4
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9481
    if-eqz v0, :cond_5

    .line 9482
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9484
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9468
    .end local v0    # "wrapEnd":Z
    .end local v1    # "wrapStart":Z
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    :goto_1
    return-object p0
.end method

.method public static wrapIfMissing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapWith"    # Ljava/lang/String;

    .line 9517
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9521
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 9522
    .local v0, "wrapStart":Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 9523
    .local v1, "wrapEnd":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 9524
    return-object p0

    .line 9527
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9528
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-eqz v0, :cond_2

    .line 9529
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9531
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9532
    if-eqz v1, :cond_3

    .line 9533
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9535
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 9518
    .end local v0    # "wrapStart":Z
    .end local v1    # "wrapEnd":Z
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_4
    :goto_0
    return-object p0
.end method
