.class public Lcn/xutils/commons/text/translate/AggregateTranslator;
.super Lcn/xutils/commons/text/translate/CharSequenceTranslator;
.source "AggregateTranslator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final translators:[Lcn/xutils/commons/text/translate/CharSequenceTranslator;


# direct methods
.method public varargs constructor <init>([Lcn/xutils/commons/text/translate/CharSequenceTranslator;)V
    .locals 1
    .param p1, "translators"    # [Lcn/xutils/commons/text/translate/CharSequenceTranslator;

    .line 43
    invoke-direct {p0}, Lcn/xutils/commons/text/translate/CharSequenceTranslator;-><init>()V

    .line 44
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->clone([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/xutils/commons/text/translate/CharSequenceTranslator;

    iput-object v0, p0, Lcn/xutils/commons/text/translate/AggregateTranslator;->translators:[Lcn/xutils/commons/text/translate/CharSequenceTranslator;

    .line 45
    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcn/xutils/commons/text/translate/AggregateTranslator;->translators:[Lcn/xutils/commons/text/translate/CharSequenceTranslator;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 55
    .local v4, "translator":Lcn/xutils/commons/text/translate/CharSequenceTranslator;
    invoke-virtual {v4, p1, p2, p3}, Lcn/xutils/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I

    move-result v5

    .line 56
    .local v5, "consumed":I
    if-eqz v5, :cond_0

    .line 57
    return v5

    .line 54
    .end local v4    # "translator":Lcn/xutils/commons/text/translate/CharSequenceTranslator;
    .end local v5    # "consumed":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return v2
.end method
