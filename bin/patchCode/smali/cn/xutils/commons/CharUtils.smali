.class public Lcn/xutils/commons/CharUtils;
.super Ljava/lang/Object;
.source "CharUtils.java"


# static fields
.field private static final CHAR_STRING_ARRAY:[Ljava/lang/String;

.field public static final CR:C = '\r'

.field private static final HEX_DIGITS:[C

.field public static final LF:C = '\n'

.field public static final NUL:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcn/xutils/commons/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    .line 35
    const/16 v1, 0x10

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcn/xutils/commons/CharUtils;->HEX_DIGITS:[C

    .line 63
    new-instance v1, Lcn/xutils/commons/CharUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/CharUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcn/xutils/commons/ArrayUtils;->setAll([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    .line 64
    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static compare(CC)I
    .locals 1
    .param p0, "x"    # C
    .param p1, "y"    # C

    .line 519
    sub-int v0, p0, p1

    return v0
.end method

.method public static isAscii(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 372
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsciiAlpha(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 429
    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiAlphaUpper(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiAlphaLower(C)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isAsciiAlphaLower(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 467
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsciiAlphaUpper(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 448
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsciiAlphanumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 505
    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isAsciiControl(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 410
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7f

    if-ne p0, v0, :cond_0

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

.method public static isAsciiNumeric(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 486
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAsciiPrintable(C)Z
    .locals 1
    .param p0, "ch"    # C

    .line 391
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$static$0(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .line 63
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toChar(Ljava/lang/Character;)C
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .line 131
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/Character;C)C
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # C

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static toChar(Ljava/lang/String;)C
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "The String must not be empty"

    invoke-static {p0, v2, v1}, Lcn/xutils/commons/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 169
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public static toChar(Ljava/lang/String;C)C
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # C

    .line 188
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0
.end method

.method public static toCharacterObject(C)Ljava/lang/Character;
    .locals 1
    .param p0, "ch"    # C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public static toCharacterObject(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 114
    invoke-static {p0}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toIntValue(C)I
    .locals 3
    .param p0, "ch"    # C

    .line 207
    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    add-int/lit8 v0, p0, -0x30

    return v0

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range \'0\' - \'9\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toIntValue(CI)I
    .locals 1
    .param p0, "ch"    # C
    .param p1, "defaultValue"    # I

    .line 229
    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->isAsciiNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;)I
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .line 250
    invoke-static {p0}, Lcn/xutils/commons/CharUtils;->toChar(Ljava/lang/Character;)C

    move-result v0

    invoke-static {v0}, Lcn/xutils/commons/CharUtils;->toIntValue(C)I

    move-result v0

    return v0
.end method

.method public static toIntValue(Ljava/lang/Character;I)I
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;
    .param p1, "defaultValue"    # I

    .line 270
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0, p1}, Lcn/xutils/commons/CharUtils;->toIntValue(CI)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    return v0
.end method

.method public static toString(C)Ljava/lang/String;
    .locals 2
    .param p0, "ch"    # C

    .line 288
    sget-object v0, Lcn/xutils/commons/CharUtils;->CHAR_STRING_ARRAY:[Ljava/lang/String;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 289
    aget-object v0, v0, p0

    return-object v0

    .line 291
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .line 312
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcn/xutils/commons/CharUtils;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static unicodeEscaped(C)Ljava/lang/String;
    .locals 3
    .param p0, "ch"    # C

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/CharUtils;->HEX_DIGITS:[C

    shr-int/lit8 v2, p0, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unicodeEscaped(Ljava/lang/Character;)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # Ljava/lang/Character;

    .line 353
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Lcn/xutils/commons/CharUtils;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
