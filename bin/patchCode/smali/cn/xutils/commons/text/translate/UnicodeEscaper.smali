.class public Lcn/xutils/commons/text/translate/UnicodeEscaper;
.super Lcn/xutils/commons/text/translate/CodePointTranslator;
.source "UnicodeEscaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final above:I

.field private final below:I

.field private final between:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 41
    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcn/xutils/commons/text/translate/UnicodeEscaper;-><init>(IIZ)V

    .line 42
    return-void
.end method

.method protected constructor <init>(IIZ)V
    .locals 0
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .line 54
    invoke-direct {p0}, Lcn/xutils/commons/text/translate/CodePointTranslator;-><init>()V

    .line 55
    iput p1, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->below:I

    .line 56
    iput p2, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->above:I

    .line 57
    iput-boolean p3, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->between:Z

    .line 58
    return-void
.end method

.method public static above(I)Lcn/xutils/commons/text/translate/UnicodeEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/xutils/commons/text/translate/UnicodeEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lcn/xutils/commons/text/translate/UnicodeEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 67
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcn/xutils/commons/text/translate/UnicodeEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/UnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lcn/xutils/commons/text/translate/UnicodeEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 99
    new-instance v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcn/xutils/commons/text/translate/UnicodeEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 88
    new-instance v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .locals 2
    .param p1, "codePoint"    # I

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/text/translate/UnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(ILjava/io/Writer;)Z
    .locals 2
    .param p1, "codePoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-boolean v0, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->above:I

    if-le p1, v0, :cond_2

    .line 109
    :cond_0
    return v1

    .line 111
    :cond_1
    iget v0, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->below:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->above:I

    if-gt p1, v0, :cond_2

    .line 112
    return v1

    .line 116
    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    .line 117
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/translate/UnicodeEscaper;->toUtf16Escape(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "\\u"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 121
    sget-object v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 122
    sget-object v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 123
    sget-object v0, Lcn/xutils/commons/text/translate/UnicodeEscaper;->HEX_DIGITS:[C

    and-int/lit8 v1, p1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 125
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
