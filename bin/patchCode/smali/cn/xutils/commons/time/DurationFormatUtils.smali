.class public Lcn/xutils/commons/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/time/DurationFormatUtils$Token;
    }
.end annotation


# static fields
.field static final H:Ljava/lang/String; = "H"

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

.field static final M:Ljava/lang/String; = "M"

.field static final S:Ljava/lang/String; = "S"

.field static final d:Ljava/lang/String; = "d"

.field static final m:Ljava/lang/String; = "m"

.field static final s:Ljava/lang/String; = "s"

.field static final y:Ljava/lang/String; = "y"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static format([Lcn/xutils/commons/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;
    .locals 16
    .param p0, "tokens"    # [Lcn/xutils/commons/time/DurationFormatUtils$Token;
    .param p1, "years"    # J
    .param p3, "months"    # J
    .param p5, "days"    # J
    .param p7, "hours"    # J
    .param p9, "minutes"    # J
    .param p11, "seconds"    # J
    .param p13, "milliseconds"    # J
    .param p15, "padWithZeros"    # Z

    .line 424
    move-object/from16 v0, p0

    move-wide/from16 v1, p13

    move/from16 v3, p15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v4, "buffer":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 426
    .local v5, "lastOutputSeconds":Z
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_a

    aget-object v8, v0, v7

    .line 427
    .local v8, "token":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    invoke-virtual {v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 428
    .local v9, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->getCount()I

    move-result v10

    .line 429
    .local v10, "count":I
    instance-of v11, v9, Ljava/lang/StringBuilder;

    if-eqz v11, :cond_0

    .line 430
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 431
    :cond_0
    const-string v11, "y"

    invoke-virtual {v9, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 432
    move-wide/from16 v11, p1

    invoke-static {v11, v12, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    const/4 v5, 0x0

    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 434
    :cond_1
    move-wide/from16 v11, p1

    const-string v13, "M"

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 435
    move-wide/from16 v13, p3

    invoke-static {v13, v14, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 437
    :cond_2
    move-wide/from16 v13, p3

    const-string v15, "d"

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 438
    move-wide/from16 v11, p5

    invoke-static {v11, v12, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto/16 :goto_2

    .line 440
    :cond_3
    move-wide/from16 v11, p5

    const-string v15, "H"

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 441
    move-wide/from16 v11, p7

    invoke-static {v11, v12, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto :goto_2

    .line 443
    :cond_4
    move-wide/from16 v11, p7

    const-string v15, "m"

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 444
    move-wide/from16 v11, p9

    invoke-static {v11, v12, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    const/4 v5, 0x0

    move-wide/from16 v11, p11

    goto :goto_2

    .line 446
    :cond_5
    move-wide/from16 v11, p9

    const-string v15, "s"

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 447
    move-wide/from16 v11, p11

    invoke-static {v11, v12, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    const/4 v5, 0x1

    goto :goto_2

    .line 449
    :cond_6
    move-wide/from16 v11, p11

    const-string v15, "S"

    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 450
    if-eqz v5, :cond_8

    .line 452
    const/4 v15, 0x3

    if-eqz v3, :cond_7

    invoke-static {v15, v10}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 453
    .local v15, "width":I
    :cond_7
    const/4 v0, 0x1

    invoke-static {v1, v2, v0, v15}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .end local v15    # "width":I
    goto :goto_1

    .line 455
    :cond_8
    invoke-static {v1, v2, v3, v10}, Lcn/xutils/commons/time/DurationFormatUtils;->paddedValue(JZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    :goto_1
    const/4 v0, 0x0

    move v5, v0

    .line 426
    .end local v8    # "token":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "count":I
    :cond_9
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 460
    :cond_a
    move-wide/from16 v13, p3

    move-wide/from16 v11, p11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDuration(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 27
    .param p0, "durationMillis"    # J
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "padWithZeros"    # Z

    .line 132
    const-wide/16 v0, 0x0

    const-wide v2, 0x7fffffffffffffffL

    const-string v6, "durationMillis must not be negative"

    move-wide/from16 v4, p0

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/Validate;->inclusiveBetween(JJJLjava/lang/String;)V

    .line 134
    invoke-static/range {p2 .. p2}, Lcn/xutils/commons/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lcn/xutils/commons/time/DurationFormatUtils$Token;

    move-result-object v0

    .line 136
    .local v0, "tokens":[Lcn/xutils/commons/time/DurationFormatUtils$Token;
    const-wide/16 v1, 0x0

    .line 137
    .local v1, "days":J
    const-wide/16 v3, 0x0

    .line 138
    .local v3, "hours":J
    const-wide/16 v5, 0x0

    .line 139
    .local v5, "minutes":J
    const-wide/16 v7, 0x0

    .line 140
    .local v7, "seconds":J
    move-wide/from16 v9, p0

    .line 142
    .local v9, "milliseconds":J
    const-string v11, "d"

    invoke-static {v0, v11}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 143
    const-wide/32 v11, 0x5265c00

    div-long v1, v9, v11

    .line 144
    mul-long/2addr v11, v1

    sub-long/2addr v9, v11

    .line 146
    :cond_0
    const-string v11, "H"

    invoke-static {v0, v11}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 147
    const-wide/32 v11, 0x36ee80

    div-long v3, v9, v11

    .line 148
    mul-long/2addr v11, v3

    sub-long/2addr v9, v11

    .line 150
    :cond_1
    const-string v11, "m"

    invoke-static {v0, v11}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 151
    const-wide/32 v11, 0xea60

    div-long v5, v9, v11

    .line 152
    mul-long/2addr v11, v5

    sub-long/2addr v9, v11

    .line 154
    :cond_2
    const-string v11, "s"

    invoke-static {v0, v11}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 155
    const-wide/16 v11, 0x3e8

    div-long v7, v9, v11

    .line 156
    mul-long/2addr v11, v7

    sub-long/2addr v9, v11

    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    goto :goto_0

    .line 154
    :cond_3
    move-wide/from16 v23, v7

    move-wide/from16 v25, v9

    .line 159
    .end local v7    # "seconds":J
    .end local v9    # "milliseconds":J
    .local v23, "seconds":J
    .local v25, "milliseconds":J
    :goto_0
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v7, v0

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v5

    move-wide/from16 v18, v23

    move-wide/from16 v20, v25

    move/from16 v22, p3

    invoke-static/range {v7 .. v22}, Lcn/xutils/commons/time/DurationFormatUtils;->format([Lcn/xutils/commons/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static formatDurationHMS(J)Ljava/lang/String;
    .locals 1
    .param p0, "durationMillis"    # J

    .line 84
    const-string v0, "HH:mm:ss.SSS"

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationISO(J)Ljava/lang/String;
    .locals 2
    .param p0, "durationMillis"    # J

    .line 100
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDurationWords(JZZ)Ljava/lang/String;
    .locals 9
    .param p0, "durationMillis"    # J
    .param p2, "suppressLeadingZeroElements"    # Z
    .param p3, "suppressTrailingZeroElements"    # Z

    .line 182
    const-string v0, "d\' days \'H\' hours \'m\' minutes \'s\' seconds\'"

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/time/DurationFormatUtils;->formatDuration(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "duration":Ljava/lang/String;
    const-string v1, " 0 minutes"

    const-string v2, " 0 hours"

    const-string v3, " 0 days"

    const-string v4, " "

    const-string v5, ""

    if-eqz p2, :cond_1

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0, v3, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 187
    .local v6, "tmp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 188
    move-object v0, v6

    .line 189
    invoke-static {v0, v2, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 191
    move-object v0, v6

    .line 192
    invoke-static {v0, v1, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    move-object v0, v6

    .line 196
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 201
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 202
    const-string v6, " 0 seconds"

    invoke-static {v0, v6, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .restart local v6    # "tmp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 204
    move-object v0, v6

    .line 205
    invoke-static {v0, v1, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .end local v6    # "tmp":Ljava/lang/String;
    .local v1, "tmp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 207
    move-object v0, v1

    .line 208
    invoke-static {v0, v2, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_2

    .line 210
    invoke-static {v1, v3, v5}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .end local v1    # "tmp":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, " 1 seconds"

    const-string v2, " 1 second"

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    const-string v1, " 1 minutes"

    const-string v2, " 1 minute"

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v1, " 1 hours"

    const-string v2, " 1 hour"

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    const-string v1, " 1 days"

    const-string v2, " 1 day"

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/StringUtils;->replaceOnce(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatPeriod(JJLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;

    .line 249
    const/4 v5, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 28
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J
    .param p4, "format"    # Ljava/lang/String;
    .param p5, "padWithZeros"    # Z
    .param p6, "timezone"    # Ljava/util/TimeZone;

    .line 278
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gtz v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    const-string v7, "startMillis must not be greater than endMillis"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v7, v5}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static/range {p4 .. p4}, Lcn/xutils/commons/time/DurationFormatUtils;->lexx(Ljava/lang/String;)[Lcn/xutils/commons/time/DurationFormatUtils$Token;

    move-result-object v4

    .line 291
    .local v4, "tokens":[Lcn/xutils/commons/time/DurationFormatUtils$Token;
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v5

    .line 292
    .local v5, "start":Ljava/util/Calendar;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 293
    invoke-static/range {p6 .. p6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 294
    .local v7, "end":Ljava/util/Calendar;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 297
    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v9, v8

    .line 298
    .local v9, "milliseconds":I
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v10, v8

    .line 299
    .local v10, "seconds":I
    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v11, v8

    .line 300
    .local v11, "minutes":I
    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    sub-int/2addr v12, v8

    .line 301
    .local v12, "hours":I
    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v14

    sub-int/2addr v13, v14

    .line 302
    .local v13, "days":I
    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v16

    sub-int v15, v15, v16

    .line 303
    .local v15, "months":I
    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v17

    sub-int v16, v16, v17

    .line 306
    .local v16, "years":I
    :goto_1
    if-gez v9, :cond_1

    .line 307
    add-int/lit16 v9, v9, 0x3e8

    .line 308
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 310
    :cond_1
    :goto_2
    if-gez v10, :cond_2

    .line 311
    add-int/lit8 v10, v10, 0x3c

    .line 312
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 314
    :cond_2
    :goto_3
    if-gez v11, :cond_3

    .line 315
    add-int/lit8 v11, v11, 0x3c

    .line 316
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 318
    :cond_3
    :goto_4
    if-gez v12, :cond_4

    .line 319
    add-int/lit8 v12, v12, 0x18

    .line 320
    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    .line 323
    :cond_4
    const-string v6, "M"

    invoke-static {v4, v6}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    const-string v14, "y"

    if-eqz v6, :cond_9

    .line 324
    :goto_5
    if-gez v13, :cond_5

    .line 325
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v13, v6

    .line 326
    add-int/lit8 v15, v15, -0x1

    .line 327
    const/4 v6, 0x2

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Ljava/util/Calendar;->add(II)V

    const/4 v8, 0x5

    goto :goto_5

    .line 330
    :cond_5
    :goto_6
    if-gez v15, :cond_6

    .line 331
    add-int/lit8 v15, v15, 0xc

    .line 332
    add-int/lit8 v16, v16, -0x1

    goto :goto_6

    .line 335
    :cond_6
    invoke-static {v4, v14}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v16, :cond_8

    .line 336
    :goto_7
    if-eqz v16, :cond_7

    .line 337
    mul-int/lit8 v6, v16, 0xc

    add-int/2addr v15, v6

    .line 338
    const/16 v16, 0x0

    goto :goto_7

    .line 336
    :cond_7
    move v6, v15

    move/from16 v15, v16

    goto/16 :goto_b

    .line 388
    :cond_8
    move v6, v15

    move/from16 v15, v16

    goto/16 :goto_b

    .line 344
    :cond_9
    invoke-static {v4, v14}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 345
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 346
    .local v8, "target":I
    if-gez v15, :cond_a

    .line 348
    add-int/lit8 v8, v8, -0x1

    .line 351
    :cond_a
    :goto_8
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v14, v8, :cond_c

    .line 352
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v20

    sub-int v14, v14, v20

    add-int/2addr v13, v14

    .line 355
    instance-of v14, v5, Ljava/util/GregorianCalendar;

    if-eqz v14, :cond_b

    .line 356
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_b

    .line 357
    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v6, 0x1d

    if-ne v14, v6, :cond_b

    .line 358
    add-int/lit8 v13, v13, 0x1

    .line 361
    :cond_b
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v6}, Ljava/util/Calendar;->add(II)V

    .line 363
    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v13, v6

    const/4 v6, 0x1

    goto :goto_8

    .line 366
    :cond_c
    const/16 v16, 0x0

    .line 369
    .end local v8    # "target":I
    :cond_d
    :goto_9
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v14

    if-eq v8, v14, :cond_e

    .line 370
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v14

    add-int/2addr v13, v14

    .line 371
    const/4 v14, 0x1

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_9

    .line 374
    :cond_e
    const/4 v8, 0x5

    const/4 v6, 0x0

    move v15, v6

    .line 376
    :goto_a
    if-gez v13, :cond_f

    .line 377
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    add-int/2addr v13, v6

    .line 378
    add-int/lit8 v15, v15, -0x1

    .line 379
    const/4 v6, 0x2

    const/4 v14, 0x1

    invoke-virtual {v5, v6, v14}, Ljava/util/Calendar;->add(II)V

    goto :goto_a

    .line 376
    :cond_f
    move v6, v15

    move/from16 v15, v16

    .line 388
    .end local v16    # "years":I
    .local v6, "months":I
    .local v15, "years":I
    :goto_b
    const-string v8, "d"

    invoke-static {v4, v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 389
    mul-int/lit8 v8, v13, 0x18

    add-int/2addr v12, v8

    .line 390
    const/4 v13, 0x0

    .line 392
    :cond_10
    const-string v8, "H"

    invoke-static {v4, v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    .line 393
    mul-int/lit8 v8, v12, 0x3c

    add-int/2addr v11, v8

    .line 394
    const/4 v12, 0x0

    move v14, v12

    goto :goto_c

    .line 392
    :cond_11
    move v14, v12

    .line 396
    .end local v12    # "hours":I
    .local v14, "hours":I
    :goto_c
    const-string v8, "m"

    invoke-static {v4, v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 397
    mul-int/lit8 v8, v11, 0x3c

    add-int/2addr v10, v8

    .line 398
    const/4 v11, 0x0

    .line 400
    :cond_12
    const-string v8, "s"

    invoke-static {v4, v8}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    .line 401
    mul-int/lit16 v8, v10, 0x3e8

    add-int/2addr v9, v8

    .line 402
    const/4 v10, 0x0

    move v12, v9

    move v9, v10

    goto :goto_d

    .line 400
    :cond_13
    move v12, v9

    move v9, v10

    .line 405
    .end local v10    # "seconds":I
    .local v9, "seconds":I
    .local v12, "milliseconds":I
    :goto_d
    int-to-long v0, v15

    int-to-long v2, v6

    move-object/from16 v24, v5

    move/from16 v25, v6

    .end local v5    # "start":Ljava/util/Calendar;
    .end local v6    # "months":I
    .local v24, "start":Ljava/util/Calendar;
    .local v25, "months":I
    int-to-long v5, v13

    move-wide/from16 v16, v5

    int-to-long v5, v14

    move-wide/from16 v18, v5

    int-to-long v5, v11

    move-wide/from16 v20, v5

    int-to-long v5, v9

    move-wide/from16 v22, v5

    int-to-long v5, v12

    move-object v8, v4

    move/from16 v26, v9

    .end local v9    # "seconds":I
    .local v26, "seconds":I
    move-wide v9, v0

    move v1, v11

    move v0, v12

    .end local v11    # "minutes":I
    .end local v12    # "milliseconds":I
    .local v0, "milliseconds":I
    .local v1, "minutes":I
    move-wide v11, v2

    move v3, v13

    move v2, v14

    .end local v13    # "days":I
    .end local v14    # "hours":I
    .local v2, "hours":I
    .local v3, "days":I
    move-wide/from16 v13, v16

    move/from16 v27, v15

    .end local v15    # "years":I
    .local v27, "years":I
    move-wide/from16 v15, v18

    move-wide/from16 v17, v20

    move-wide/from16 v19, v22

    move-wide/from16 v21, v5

    move/from16 v23, p5

    invoke-static/range {v8 .. v23}, Lcn/xutils/commons/time/DurationFormatUtils;->format([Lcn/xutils/commons/time/DurationFormatUtils$Token;JJJJJJJZ)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static formatPeriodISO(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "startMillis"    # J
    .param p2, "endMillis"    # J

    .line 235
    const-string v4, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.SSS\'S\'"

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v6}, Lcn/xutils/commons/time/DurationFormatUtils;->formatPeriod(JJLjava/lang/String;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static lexx(Ljava/lang/String;)[Lcn/xutils/commons/time/DurationFormatUtils$Token;
    .locals 8
    .param p0, "format"    # Ljava/lang/String;

    .line 492
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 494
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/xutils/commons/time/DurationFormatUtils$Token;>;"
    const/4 v1, 0x0

    .line 497
    .local v1, "inLiteral":Z
    const/4 v2, 0x0

    .line 498
    .local v2, "buffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 499
    .local v3, "previous":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 500
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 501
    .local v5, "ch":C
    if-eqz v1, :cond_0

    const/16 v6, 0x27

    if-eq v5, v6, :cond_0

    .line 502
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    goto/16 :goto_4

    .line 505
    :cond_0
    const/4 v6, 0x0

    .line 506
    .local v6, "value":Ljava/lang/String;
    sparse-switch v5, :sswitch_data_0

    .line 540
    if-nez v2, :cond_2

    .line 541
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 542
    new-instance v7, Lcn/xutils/commons/time/DurationFormatUtils$Token;

    invoke-direct {v7, v2}, Lcn/xutils/commons/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 519
    :sswitch_0
    const-string v6, "y"

    .line 520
    goto :goto_2

    .line 534
    :sswitch_1
    const-string v6, "s"

    .line 535
    goto :goto_2

    .line 531
    :sswitch_2
    const-string v6, "m"

    .line 532
    goto :goto_2

    .line 525
    :sswitch_3
    const-string v6, "d"

    .line 526
    goto :goto_2

    .line 537
    :sswitch_4
    const-string v6, "S"

    .line 538
    goto :goto_2

    .line 522
    :sswitch_5
    const-string v6, "M"

    .line 523
    goto :goto_2

    .line 528
    :sswitch_6
    const-string v6, "H"

    .line 529
    goto :goto_2

    .line 509
    :sswitch_7
    if-eqz v1, :cond_1

    .line 510
    const/4 v2, 0x0

    .line 511
    const/4 v1, 0x0

    goto :goto_2

    .line 513
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 514
    new-instance v7, Lcn/xutils/commons/time/DurationFormatUtils$Token;

    invoke-direct {v7, v2}, Lcn/xutils/commons/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    const/4 v1, 0x1

    .line 517
    goto :goto_2

    .line 544
    :cond_2
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 547
    :goto_2
    if-eqz v6, :cond_4

    .line 548
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 549
    invoke-virtual {v3}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->increment()V

    goto :goto_3

    .line 551
    :cond_3
    new-instance v7, Lcn/xutils/commons/time/DurationFormatUtils$Token;

    invoke-direct {v7, v6}, Lcn/xutils/commons/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;)V

    .line 552
    .local v7, "token":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    move-object v3, v7

    .line 555
    .end local v7    # "token":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    :goto_3
    const/4 v2, 0x0

    .line 499
    .end local v5    # "ch":C
    .end local v6    # "value":Ljava/lang/String;
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 558
    .end local v4    # "i":I
    :cond_5
    if-nez v1, :cond_6

    .line 561
    invoke-static {}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->-$$Nest$sfgetEMPTY_ARRAY()[Lcn/xutils/commons/time/DurationFormatUtils$Token;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcn/xutils/commons/time/DurationFormatUtils$Token;

    return-object v4

    .line 559
    :cond_6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmatched quote in format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_7
        0x48 -> :sswitch_6
        0x4d -> :sswitch_5
        0x53 -> :sswitch_4
        0x64 -> :sswitch_3
        0x6d -> :sswitch_2
        0x73 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private static paddedValue(JZI)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J
    .param p2, "padWithZeros"    # Z
    .param p3, "count"    # I

    .line 473
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "longString":Ljava/lang/String;
    if-eqz p2, :cond_0

    const/16 v1, 0x30

    invoke-static {v0, p3, v1}, Lcn/xutils/commons/StringUtils;->leftPad(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method
