.class public Lcn/xutils/commons/text/StrTokenizer;
.super Ljava/lang/Object;
.source "StrTokenizer.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;

.field private static final TSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;


# instance fields
.field private chars:[C

.field private delimMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private emptyAsNull:Z

.field private ignoreEmptyTokens:Z

.field private ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

.field private tokenPos:I

.field private tokens:[Ljava/lang/String;

.field private trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Lcn/xutils/commons/text/StrTokenizer;

    invoke-direct {v0}, Lcn/xutils/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lcn/xutils/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;

    .line 103
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->commaMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 104
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->doubleQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 105
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setIgnoredMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 106
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->trimMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setTrimmerMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lcn/xutils/commons/text/StrTokenizer;

    .line 108
    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lcn/xutils/commons/text/StrTokenizer;

    .line 110
    new-instance v0, Lcn/xutils/commons/text/StrTokenizer;

    invoke-direct {v0}, Lcn/xutils/commons/text/StrTokenizer;-><init>()V

    sput-object v0, Lcn/xutils/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;

    .line 111
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->tabMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 112
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->doubleQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 113
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/xutils/commons/text/StrTokenizer;->setIgnoredMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 114
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->trimMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/xutils/commons/text/StrTokenizer;->setTrimmerMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 115
    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setEmptyTokenAsNull(Z)Lcn/xutils/commons/text/StrTokenizer;

    .line 116
    invoke-virtual {v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->setIgnoreEmptyTokens(Z)Lcn/xutils/commons/text/StrTokenizer;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->splitMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 129
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 131
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 133
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 252
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->splitMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 129
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 131
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 133
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 266
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;C)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C

    .line 275
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterChar(C)Lcn/xutils/commons/text/StrTokenizer;

    .line 277
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CC)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 310
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/StrTokenizer;-><init>(Ljava/lang/String;C)V

    .line 311
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteChar(C)Lcn/xutils/commons/text/StrTokenizer;

    .line 312
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/xutils/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lcn/xutils/commons/text/StrMatcher;

    .line 297
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Lcn/xutils/commons/text/StrMatcher;
    .param p3, "quote"    # Lcn/xutils/commons/text/StrMatcher;

    .line 323
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/StrTokenizer;-><init>(Ljava/lang/String;Lcn/xutils/commons/text/StrMatcher;)V

    .line 324
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 325
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delim"    # Ljava/lang/String;

    .line 286
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;

    .line 288
    return-void
.end method

.method public constructor <init>([C)V
    .locals 1
    .param p1, "input"    # [C

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->splitMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 129
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 131
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 133
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 334
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 335
    return-void
.end method

.method public constructor <init>([CC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C

    .line 344
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>([C)V

    .line 345
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterChar(C)Lcn/xutils/commons/text/StrTokenizer;

    .line 346
    return-void
.end method

.method public constructor <init>([CCC)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # C
    .param p3, "quote"    # C

    .line 379
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/StrTokenizer;-><init>([CC)V

    .line 380
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteChar(C)Lcn/xutils/commons/text/StrTokenizer;

    .line 381
    return-void
.end method

.method public constructor <init>([CLcn/xutils/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lcn/xutils/commons/text/StrMatcher;

    .line 366
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>([C)V

    .line 367
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 368
    return-void
.end method

.method public constructor <init>([CLcn/xutils/commons/text/StrMatcher;Lcn/xutils/commons/text/StrMatcher;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Lcn/xutils/commons/text/StrMatcher;
    .param p3, "quote"    # Lcn/xutils/commons/text/StrMatcher;

    .line 392
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/StrTokenizer;-><init>([CLcn/xutils/commons/text/StrMatcher;)V

    .line 393
    invoke-virtual {p0, p3}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    .line 394
    return-void
.end method

.method public constructor <init>([CLjava/lang/String;)V
    .locals 0
    .param p1, "input"    # [C
    .param p2, "delim"    # Ljava/lang/String;

    .line 355
    invoke-direct {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;-><init>([C)V

    .line 356
    invoke-virtual {p0, p2}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterString(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;

    .line 357
    return-void
.end method

.method private addToken(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "tok"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 667
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2}, Lcn/xutils/commons/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->isIgnoreEmptyTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->isEmptyTokenAsNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const/4 p2, 0x0

    .line 675
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    return-void
.end method

.method private checkTokenized()V
    .locals 3

    .line 604
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 605
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcn/xutils/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 608
    .local v0, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 609
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 610
    :cond_0
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcn/xutils/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    .line 611
    .restart local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 614
    .end local v0    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private static getCSVClone()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 147
    sget-object v0, Lcn/xutils/commons/text/StrTokenizer;->CSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getCSVInstance()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 161
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getCSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getCSVInstance(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 174
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getCSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    .line 175
    .local v0, "tok":Lcn/xutils/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;

    .line 176
    return-object v0
.end method

.method public static getCSVInstance([C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 189
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getCSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    .line 190
    .local v0, "tok":Lcn/xutils/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrTokenizer;->reset([C)Lcn/xutils/commons/text/StrTokenizer;

    .line 191
    return-object v0
.end method

.method private static getTSVClone()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 200
    sget-object v0, Lcn/xutils/commons/text/StrTokenizer;->TSV_TOKENIZER_PROTOTYPE:Lcn/xutils/commons/text/StrTokenizer;

    invoke-virtual {v0}, Lcn/xutils/commons/text/StrTokenizer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/StrTokenizer;

    return-object v0
.end method

.method public static getTSVInstance()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 214
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getTSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public static getTSVInstance(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 225
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getTSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    .line 226
    .local v0, "tok":Lcn/xutils/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrTokenizer;->reset(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;

    .line 227
    return-object v0
.end method

.method public static getTSVInstance([C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p0, "input"    # [C

    .line 238
    invoke-static {}, Lcn/xutils/commons/text/StrTokenizer;->getTSVClone()Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    .line 239
    .local v0, "tok":Lcn/xutils/commons/text/StrTokenizer;
    invoke-virtual {v0, p0}, Lcn/xutils/commons/text/StrTokenizer;->reset([C)Lcn/xutils/commons/text/StrTokenizer;

    .line 240
    return-object v0
.end method

.method private isQuote([CIIII)Z
    .locals 3
    .param p1, "srcChars"    # [C
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .param p4, "quoteStart"    # I
    .param p5, "quoteLen"    # I

    .line 831
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p5, :cond_2

    .line 832
    add-int v1, p2, v0

    if-ge v1, p3, :cond_1

    add-int v1, p2, v0

    aget-char v1, p1, v1

    add-int v2, p4, v0

    aget-char v2, p1, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 831
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_1
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 836
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private readNextToken([CIILcn/xutils/commons/text/StrBuilder;Ljava/util/List;)I
    .locals 10
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lcn/xutils/commons/text/StrBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lcn/xutils/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 692
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    :goto_0
    if-ge p2, p3, :cond_1

    .line 693
    nop

    .line 694
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getIgnoredMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    .line 695
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getTrimmerMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 693
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 696
    .local v0, "removeLen":I
    if-eqz v0, :cond_1

    .line 697
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-gtz v1, :cond_1

    .line 698
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    if-lez v1, :cond_0

    .line 699
    goto :goto_1

    .line 701
    :cond_0
    add-int/2addr p2, v0

    .line 702
    .end local v0    # "removeLen":I
    goto :goto_0

    .line 705
    :cond_1
    :goto_1
    const-string v0, ""

    if-lt p2, p3, :cond_2

    .line 706
    invoke-direct {p0, p5, v0}, Lcn/xutils/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 707
    const/4 v0, -0x1

    return v0

    .line 711
    :cond_2
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v8

    .line 712
    .local v8, "delimLen":I
    if-lez v8, :cond_3

    .line 713
    invoke-direct {p0, p5, v0}, Lcn/xutils/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 714
    add-int v0, p2, v8

    return v0

    .line 718
    :cond_3
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p3}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v9

    .line 719
    .local v9, "quoteLen":I
    if-lez v9, :cond_4

    .line 720
    add-int v2, p2, v9

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcn/xutils/commons/text/StrTokenizer;->readWithQuotes([CIILcn/xutils/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0

    .line 722
    :cond_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcn/xutils/commons/text/StrTokenizer;->readWithQuotes([CIILcn/xutils/commons/text/StrBuilder;Ljava/util/List;II)I

    move-result v0

    return v0
.end method

.method private readWithQuotes([CIILcn/xutils/commons/text/StrBuilder;Ljava/util/List;II)I
    .locals 18
    .param p1, "srcChars"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .param p4, "workArea"    # Lcn/xutils/commons/text/StrBuilder;
    .param p6, "quoteStart"    # I
    .param p7, "quoteLen"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII",
            "Lcn/xutils/commons/text/StrBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)I"
        }
    .end annotation

    .line 743
    .local p5, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    invoke-virtual/range {p4 .. p4}, Lcn/xutils/commons/text/StrBuilder;->clear()Lcn/xutils/commons/text/StrBuilder;

    .line 744
    move/from16 v0, p2

    .line 745
    .local v0, "pos":I
    const/4 v13, 0x0

    if-lez v12, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v13

    .line 746
    .local v1, "quoting":Z
    :goto_0
    const/4 v2, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    .line 748
    .end local v0    # "pos":I
    .end local v1    # "quoting":Z
    .local v5, "trimStart":I
    .local v14, "pos":I
    .local v15, "quoting":Z
    :goto_1
    if-ge v14, v9, :cond_7

    .line 752
    if-eqz v15, :cond_2

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .local v16, "quoting":Z
    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 760
    add-int v2, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v10, v7, v14, v12}, Lcn/xutils/commons/text/StrBuilder;->append([CII)Lcn/xutils/commons/text/StrBuilder;

    .line 763
    mul-int/lit8 v0, v12, 0x2

    add-int/2addr v14, v0

    .line 764
    invoke-virtual/range {p4 .. p4}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v5

    .line 765
    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    move/from16 v15, v16

    goto :goto_1

    .line 769
    .end local v5    # "trimStart":I
    .restart local v15    # "trimStart":I
    :cond_1
    const/4 v0, 0x0

    .line 770
    .end local v16    # "quoting":Z
    .local v0, "quoting":Z
    add-int/2addr v14, v12

    .line 771
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 778
    .end local v0    # "quoting":Z
    .restart local v5    # "trimStart":I
    .local v15, "quoting":Z
    :cond_2
    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .restart local v16    # "quoting":Z
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrTokenizer;->getDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v17

    .line 779
    .local v17, "delimLen":I
    if-lez v17, :cond_3

    .line 781
    invoke-virtual {v10, v13, v15}, Lcn/xutils/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lcn/xutils/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 782
    add-int v0, v14, v17

    return v0

    .line 786
    :cond_3
    if-lez v12, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcn/xutils/commons/text/StrTokenizer;->isQuote([CIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 787
    const/4 v0, 0x1

    .line 788
    .end local v16    # "quoting":Z
    .restart local v0    # "quoting":Z
    add-int/2addr v14, v12

    .line 789
    move v5, v15

    move v15, v0

    goto :goto_1

    .line 793
    .end local v0    # "quoting":Z
    .restart local v16    # "quoting":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrTokenizer;->getIgnoredMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {v0, v7, v14, v8, v9}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    .line 794
    .local v0, "ignoredLen":I
    if-lez v0, :cond_5

    .line 795
    add-int/2addr v14, v0

    .line 796
    move v5, v15

    move/from16 v15, v16

    goto :goto_1

    .line 802
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/xutils/commons/text/StrTokenizer;->getTrimmerMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v14, v8, v9}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v1

    .line 803
    .local v1, "trimmedLen":I
    if-lez v1, :cond_6

    .line 804
    invoke-virtual {v10, v7, v14, v1}, Lcn/xutils/commons/text/StrBuilder;->append([CII)Lcn/xutils/commons/text/StrBuilder;

    .line 805
    add-int/2addr v14, v1

    .line 806
    move v5, v15

    move/from16 v15, v16

    goto/16 :goto_1

    .line 810
    .end local v0    # "ignoredLen":I
    .end local v1    # "trimmedLen":I
    .end local v17    # "delimLen":I
    :cond_6
    add-int/lit8 v0, v14, 0x1

    .end local v14    # "pos":I
    .local v0, "pos":I
    aget-char v1, v7, v14

    invoke-virtual {v10, v1}, Lcn/xutils/commons/text/StrBuilder;->append(C)Lcn/xutils/commons/text/StrBuilder;

    .line 811
    invoke-virtual/range {p4 .. p4}, Lcn/xutils/commons/text/StrBuilder;->size()I

    move-result v5

    move v14, v0

    move/from16 v15, v16

    .end local v15    # "trimStart":I
    .restart local v5    # "trimStart":I
    goto/16 :goto_1

    .line 815
    .end local v0    # "pos":I
    .end local v16    # "quoting":Z
    .restart local v14    # "pos":I
    .local v15, "quoting":Z
    :cond_7
    move/from16 v16, v15

    move v15, v5

    .end local v5    # "trimStart":I
    .local v15, "trimStart":I
    .restart local v16    # "quoting":Z
    invoke-virtual {v10, v13, v15}, Lcn/xutils/commons/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v11, v0}, Lcn/xutils/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    .line 816
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;->add(Ljava/lang/String;)V

    return-void
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 1073
    :try_start_0
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->cloneReset()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    return-object v1
.end method

.method cloneReset()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1088
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/text/StrTokenizer;

    .line 1089
    .local v0, "cloned":Lcn/xutils/commons/text/StrTokenizer;
    iget-object v1, v0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {v1}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 1092
    :cond_0
    invoke-virtual {v0}, Lcn/xutils/commons/text/StrTokenizer;->reset()Lcn/xutils/commons/text/StrTokenizer;

    .line 1093
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1057
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    if-nez v0, :cond_0

    .line 1058
    const/4 v0, 0x0

    return-object v0

    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getDelimiterMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 845
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public getIgnoredMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 943
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public getQuoteMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 897
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public getTokenArray()[Ljava/lang/String;
    .locals 1

    .line 439
    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;->checkTokenized()V

    .line 440
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;->checkTokenized()V

    .line 450
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 451
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 452
    return-object v0
.end method

.method public getTrimmerMatcher()Lcn/xutils/commons/text/StrMatcher;
    .locals 1

    .line 987
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 508
    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;->checkTokenized()V

    .line 509
    iget v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    iget-object v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 543
    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;->checkTokenized()V

    .line 544
    iget v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmptyTokenAsNull()Z
    .locals 1

    .line 1014
    iget-boolean v0, p0, Lcn/xutils/commons/text/StrTokenizer;->emptyAsNull:Z

    return v0
.end method

.method public isIgnoreEmptyTokens()Z
    .locals 1

    .line 1036
    iget-boolean v0, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    .line 520
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 523
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 533
    iget v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 3

    .line 415
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 418
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->previous()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/String;
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 557
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 567
    iget v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public previousToken()Ljava/lang/String;
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    iget v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    aget-object v0, v0, v1

    return-object v0

    .line 430
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 577
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()Lcn/xutils/commons/text/StrTokenizer;
    .locals 1

    .line 464
    const/4 v0, 0x0

    iput v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokenPos:I

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public reset(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 478
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->reset()Lcn/xutils/commons/text/StrTokenizer;

    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    goto :goto_0

    .line 482
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 484
    :goto_0
    return-object p0
.end method

.method public reset([C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "input"    # [C

    .line 496
    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->reset()Lcn/xutils/commons/text/StrTokenizer;

    .line 497
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->clone([C)[C

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->chars:[C

    .line 498
    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/StrTokenizer;->set(Ljava/lang/String;)V

    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set() is unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDelimiterChar(C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # C

    .line 873
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Lcn/xutils/commons/text/StrMatcher;

    .line 858
    if-nez p1, :cond_0

    .line 859
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->noneMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    goto :goto_0

    .line 861
    :cond_0
    iput-object p1, p0, Lcn/xutils/commons/text/StrTokenizer;->delimMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 863
    :goto_0
    return-object p0
.end method

.method public setDelimiterString(Ljava/lang/String;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "delim"    # Ljava/lang/String;

    .line 883
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->stringMatcher(Ljava/lang/String;)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrTokenizer;->setDelimiterMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setEmptyTokenAsNull(Z)Lcn/xutils/commons/text/StrTokenizer;
    .locals 0
    .param p1, "emptyAsNull"    # Z

    .line 1025
    iput-boolean p1, p0, Lcn/xutils/commons/text/StrTokenizer;->emptyAsNull:Z

    .line 1026
    return-object p0
.end method

.method public setIgnoreEmptyTokens(Z)Lcn/xutils/commons/text/StrTokenizer;
    .locals 0
    .param p1, "ignoreEmptyTokens"    # Z

    .line 1047
    iput-boolean p1, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoreEmptyTokens:Z

    .line 1048
    return-object p0
.end method

.method public setIgnoredChar(C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "ignored"    # C

    .line 973
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrTokenizer;->setIgnoredMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setIgnoredMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 0
    .param p1, "ignored"    # Lcn/xutils/commons/text/StrMatcher;

    .line 957
    if-eqz p1, :cond_0

    .line 958
    iput-object p1, p0, Lcn/xutils/commons/text/StrTokenizer;->ignoredMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 960
    :cond_0
    return-object p0
.end method

.method public setQuoteChar(C)Lcn/xutils/commons/text/StrTokenizer;
    .locals 1
    .param p1, "quote"    # C

    .line 928
    invoke-static {p1}, Lcn/xutils/commons/text/StrMatcher;->charMatcher(C)Lcn/xutils/commons/text/StrMatcher;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/StrTokenizer;->setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;

    move-result-object v0

    return-object v0
.end method

.method public setQuoteMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 0
    .param p1, "quote"    # Lcn/xutils/commons/text/StrMatcher;

    .line 911
    if-eqz p1, :cond_0

    .line 912
    iput-object p1, p0, Lcn/xutils/commons/text/StrTokenizer;->quoteMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 914
    :cond_0
    return-object p0
.end method

.method public setTrimmerMatcher(Lcn/xutils/commons/text/StrMatcher;)Lcn/xutils/commons/text/StrTokenizer;
    .locals 0
    .param p1, "trimmer"    # Lcn/xutils/commons/text/StrMatcher;

    .line 1001
    if-eqz p1, :cond_0

    .line 1002
    iput-object p1, p0, Lcn/xutils/commons/text/StrTokenizer;->trimmerMatcher:Lcn/xutils/commons/text/StrMatcher;

    .line 1004
    :cond_0
    return-object p0
.end method

.method public size()I
    .locals 1

    .line 403
    invoke-direct {p0}, Lcn/xutils/commons/text/StrTokenizer;->checkTokenized()V

    .line 404
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1103
    iget-object v0, p0, Lcn/xutils/commons/text/StrTokenizer;->tokens:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1104
    const-string v0, "StrTokenizer[not tokenized yet]"

    return-object v0

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrTokenizer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/text/StrTokenizer;->getTokenList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 8
    .param p1, "srcChars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 640
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->isEmpty([C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    new-instance v5, Lcn/xutils/commons/text/StrBuilder;

    invoke-direct {v5}, Lcn/xutils/commons/text/StrBuilder;-><init>()V

    .line 644
    .local v5, "buf":Lcn/xutils/commons/text/StrBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v0, "tokenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v1, p2

    move v7, v1

    .line 648
    .local v7, "pos":I
    :cond_1
    :goto_0
    if-ltz v7, :cond_2

    if-ge v7, p3, :cond_2

    .line 650
    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move v4, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcn/xutils/commons/text/StrTokenizer;->readNextToken([CIILcn/xutils/commons/text/StrBuilder;Ljava/util/List;)I

    move-result v7

    .line 653
    if-lt v7, p3, :cond_1

    .line 654
    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcn/xutils/commons/text/StrTokenizer;->addToken(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_2
    return-object v0
.end method
