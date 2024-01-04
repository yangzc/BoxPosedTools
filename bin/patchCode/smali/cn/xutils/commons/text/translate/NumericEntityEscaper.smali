.class public Lcn/xutils/commons/text/translate/NumericEntityEscaper;
.super Lcn/xutils/commons/text/translate/CodePointTranslator;
.source "NumericEntityEscaper.java"


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

    .line 57
    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcn/xutils/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    .line 58
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .line 47
    invoke-direct {p0}, Lcn/xutils/commons/text/translate/CodePointTranslator;-><init>()V

    .line 48
    iput p1, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->below:I

    .line 49
    iput p2, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->above:I

    .line 50
    iput-boolean p3, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->between:Z

    .line 51
    return-void
.end method

.method public static above(I)Lcn/xutils/commons/text/translate/NumericEntityEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 77
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lcn/xutils/commons/text/translate/NumericEntityEscaper;
    .locals 1
    .param p0, "codePoint"    # I

    .line 67
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lcn/xutils/commons/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lcn/xutils/commons/text/translate/NumericEntityEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 88
    new-instance v0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lcn/xutils/commons/text/translate/NumericEntityEscaper;
    .locals 2
    .param p0, "codePointLow"    # I
    .param p1, "codePointHigh"    # I

    .line 99
    new-instance v0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcn/xutils/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
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
    iget-boolean v0, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->between:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 108
    iget v0, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->above:I

    if-le p1, v0, :cond_2

    .line 109
    :cond_0
    return v1

    .line 111
    :cond_1
    iget v0, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->below:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcn/xutils/commons/text/translate/NumericEntityEscaper;->above:I

    if-gt p1, v0, :cond_2

    .line 112
    return v1

    .line 115
    :cond_2
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 116
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 118
    const/4 v0, 0x1

    return v0
.end method
