.class public Lcn/xutils/commons/text/WordUtils;
.super Ljava/lang/Object;
.source "WordUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 370
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 403
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 404
    .local v0, "delimLen":I
    :goto_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_3

    .line 407
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 408
    .local v1, "buffer":[C
    const/4 v2, 0x1

    .line 409
    .local v2, "capitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 410
    aget-char v4, v1, v3

    .line 411
    .local v4, "ch":C
    invoke-static {v4, p1}, Lcn/xutils/commons/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    const/4 v2, 0x1

    goto :goto_2

    .line 413
    :cond_2
    if-eqz v2, :cond_3

    .line 414
    invoke-static {v4}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v5

    aput-char v5, v1, v3

    .line 415
    const/4 v2, 0x0

    .line 409
    .end local v4    # "ch":C
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 418
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 405
    .end local v1    # "buffer":[C
    .end local v2    # "capitalizeNext":Z
    :cond_5
    :goto_3
    return-object p0
.end method

.method public static capitalizeFully(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 441
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/text/WordUtils;->capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs capitalizeFully(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 471
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 472
    .local v0, "delimLen":I
    :goto_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/xutils/commons/text/WordUtils;->capitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 473
    :cond_2
    :goto_1
    return-object p0
.end method

.method public static varargs containsAllWords(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "word"    # Ljava/lang/CharSequence;
    .param p1, "words"    # [Ljava/lang/CharSequence;

    .line 691
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 694
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 695
    .local v3, "w":Ljava/lang/CharSequence;
    invoke-static {v3}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 696
    return v1

    .line 698
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ".*\\b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\\b.*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 699
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_2

    .line 700
    return v1

    .line 694
    .end local v3    # "w":Ljava/lang/CharSequence;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 692
    :cond_4
    :goto_1
    return v1
.end method

.method public static initials(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 614
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/text/WordUtils;->initials(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs initials(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 644
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    return-object p0

    .line 647
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_1

    .line 648
    const-string v0, ""

    return-object v0

    .line 650
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 651
    .local v0, "strLen":I
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    .line 652
    .local v1, "buf":[C
    const/4 v2, 0x0

    .line 653
    .local v2, "count":I
    const/4 v3, 0x1

    .line 654
    .local v3, "lastWasGap":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_4

    .line 655
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 656
    .local v5, "ch":C
    invoke-static {v5, p1}, Lcn/xutils/commons/text/WordUtils;->isDelimiter(C[C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 657
    const/4 v3, 0x1

    goto :goto_1

    .line 658
    :cond_2
    if-eqz v3, :cond_3

    .line 659
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "count":I
    .local v6, "count":I
    aput-char v5, v1, v2

    .line 660
    const/4 v2, 0x0

    move v3, v2

    move v2, v6

    .line 654
    .end local v5    # "ch":C
    .end local v6    # "count":I
    .restart local v2    # "count":I
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 665
    .end local v4    # "i":I
    :cond_4
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method private static isDelimiter(C[C)Z
    .locals 1
    .param p0, "ch"    # C
    .param p1, "delimiters"    # [C

    .line 714
    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1, p0}, Lcn/xutils/commons/ArrayUtils;->contains([CC)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public static swapCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 566
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    return-object p0

    .line 569
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 571
    .local v0, "buffer":[C
    const/4 v1, 0x1

    .line 573
    .local v1, "whitespace":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 574
    aget-char v3, v0, v2

    .line 575
    .local v3, "ch":C
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 579
    if-eqz v1, :cond_2

    .line 580
    invoke-static {v3}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v4

    aput-char v4, v0, v2

    .line 581
    const/4 v1, 0x0

    goto :goto_2

    .line 583
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    aput-char v4, v0, v2

    goto :goto_2

    .line 586
    :cond_3
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    goto :goto_2

    .line 576
    :cond_4
    :goto_1
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    aput-char v4, v0, v2

    .line 577
    const/4 v1, 0x0

    .line 573
    .end local v3    # "ch":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static uncapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 496
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/text/WordUtils;->uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs uncapitalize(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delimiters"    # [C

    .line 525
    if-nez p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 526
    .local v0, "delimLen":I
    :goto_0
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v0, :cond_1

    goto :goto_3

    .line 529
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 530
    .local v1, "buffer":[C
    const/4 v2, 0x1

    .line 531
    .local v2, "uncapitalizeNext":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 532
    aget-char v4, v1, v3

    .line 533
    .local v4, "ch":C
    invoke-static {v4, p1}, Lcn/xutils/commons/text/WordUtils;->isDelimiter(C[C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    const/4 v2, 0x1

    goto :goto_2

    .line 535
    :cond_2
    if-eqz v2, :cond_3

    .line 536
    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    aput-char v5, v1, v3

    .line 537
    const/4 v2, 0x0

    .line 531
    .end local v4    # "ch":C
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 540
    .end local v3    # "i":I
    :cond_4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    return-object v3

    .line 527
    .end local v1    # "buffer":[C
    .end local v2    # "uncapitalizeNext":Z
    :cond_5
    :goto_3
    return-object p0
.end method

.method public static wrap(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z

    .line 178
    const-string v0, " "

    invoke-static {p0, p1, p2, p3, v0}, Lcn/xutils/commons/text/WordUtils;->wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static wrap(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "wrapLength"    # I
    .param p2, "newLineStr"    # Ljava/lang/String;
    .param p3, "wrapLongWords"    # Z
    .param p4, "wrapOn"    # Ljava/lang/String;

    .line 272
    if-nez p0, :cond_0

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    if-nez p2, :cond_1

    .line 276
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p2

    .line 278
    :cond_1
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 279
    const/4 p1, 0x1

    .line 281
    :cond_2
    invoke-static {p4}, Lcn/xutils/commons/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    const-string p4, " "

    .line 284
    :cond_3
    invoke-static {p4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 285
    .local v0, "patternToWrapOn":Ljava/util/regex/Pattern;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 286
    .local v1, "inputLineLength":I
    const/4 v2, 0x0

    .line 287
    .local v2, "offset":I
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 289
    .local v3, "wrappedLine":Ljava/lang/StringBuilder;
    :goto_0
    if-ge v2, v1, :cond_c

    .line 290
    const/4 v4, -0x1

    .line 291
    .local v4, "spaceToWrapAt":I
    add-int v5, v2, p1

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 292
    const-wide/32 v7, 0x7fffffff

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 291
    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 293
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 294
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    if-nez v6, :cond_4

    .line 295
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    add-int/2addr v2, v6

    .line 296
    goto :goto_0

    .line 298
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int v4, v6, v2

    .line 302
    :cond_5
    sub-int v6, v1, v2

    if-gt v6, p1, :cond_6

    .line 303
    goto :goto_3

    .line 306
    :cond_6
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 307
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int v4, v6, v2

    goto :goto_1

    .line 310
    :cond_7
    if-lt v4, v2, :cond_8

    .line 312
    invoke-virtual {v3, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v2, v4, 0x1

    goto :goto_2

    .line 317
    :cond_8
    if-eqz p3, :cond_9

    .line 319
    add-int v6, p1, v2

    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/2addr v2, p1

    goto :goto_2

    .line 324
    :cond_9
    add-int v6, v2, p1

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 325
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 326
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    add-int/2addr v6, v2

    add-int v4, v6, p1

    .line 329
    :cond_a
    if-ltz v4, :cond_b

    .line 330
    invoke-virtual {v3, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    add-int/lit8 v2, v4, 0x1

    goto :goto_2

    .line 334
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, p0, v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 335
    move v2, v1

    .line 338
    .end local v4    # "spaceToWrapAt":I
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    :goto_2
    goto/16 :goto_0

    .line 341
    :cond_c
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
