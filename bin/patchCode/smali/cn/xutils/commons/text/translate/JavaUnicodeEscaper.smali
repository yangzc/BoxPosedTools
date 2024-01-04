.class public Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;
.super Lcn/xutils/commons/text/translate/UnicodeEscaper;
.source "JavaUnicodeEscaper.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcn/xutils/commons/text/translate/UnicodeEscaper;-><init>(IIZ)V

    .line 92
    return-void
.end method

.method public static above(I)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 38
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 49
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 62
    new-instance v0, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 75
    new-instance v0, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected toUtf16Escape(I)Ljava/lang/String;
    .locals 4
    .param p1, "codePoint"    # I

    .line 103
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 104
    .local v0, "surrogatePair":[C
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-char v3, v0, v3

    invoke-static {v3}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-char v2, v0, v2

    invoke-static {v2}, Lcn/xutils/commons/text/translate/JavaUnicodeEscaper;->hex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
