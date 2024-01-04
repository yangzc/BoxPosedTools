.class public Lcn/xutils/commons/text/ExtendedMessageFormat;
.super Ljava/text/MessageFormat;
.source "ExtendedMessageFormat.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DUMMY_PATTERN:Ljava/lang/String; = ""

.field private static final END_FE:C = '}'

.field private static final HASH_SEED:I = 0x1f

.field private static final QUOTE:C = '\''

.field private static final START_FE:C = '{'

.field private static final START_FMT:C = ','

.field private static final serialVersionUID:J = -0x20c7ae6efb1e381fL


# instance fields
.field private final registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcn/xutils/commons/text/FormatFactory;",
            ">;"
        }
    .end annotation
.end field

.field private toPattern:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$hWpmawqjQhjJotBrvOxYRVnG6dI(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcn/xutils/commons/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p3, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcn/xutils/commons/text/FormatFactory;>;"
    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-static {p2}, Lcn/xutils/commons/LocaleUtils;->toLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->setLocale(Ljava/util/Locale;)V

    .line 136
    iput-object p3, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    .line 137
    invoke-virtual {p0, p1}, Lcn/xutils/commons/text/ExtendedMessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcn/xutils/commons/text/FormatFactory;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcn/xutils/commons/text/FormatFactory;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/util/Map;)V

    .line 123
    return-void
.end method

.method private appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    aget-char v0, v0, v1

    const/16 v1, 0x27

    if-ne v0, v1, :cond_4

    .line 488
    if-eqz p3, :cond_0

    .line 489
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 491
    :cond_0
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 493
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 494
    .local v0, "start":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 495
    .local v2, "c":[C
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 496
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    aget-char v4, v2, v4

    if-ne v4, v1, :cond_2

    .line 497
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 498
    if-nez p3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    sub-int/2addr v1, v0

    .line 498
    invoke-virtual {p3, v2, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1
    return-object v1

    .line 501
    :cond_2
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 495
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 503
    .end local v3    # "i":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unterminated quoted string at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    .end local v0    # "start":I
    .end local v2    # "c":[C
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Quoted string must start with quote character"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private containsElements(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 523
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/text/ExtendedMessageFormat$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/text/ExtendedMessageFormat$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0

    .line 524
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getFormat(Ljava/lang/String;)Ljava/text/Format;
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 312
    move-object v0, p1

    .line 313
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 314
    .local v1, "args":Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 315
    .local v2, "i":I
    if-lez v2, :cond_0

    .line 316
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 317
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 319
    :cond_0
    iget-object v3, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/xutils/commons/text/FormatFactory;

    .line 320
    .local v3, "factory":Lcn/xutils/commons/text/FormatFactory;
    if-eqz v3, :cond_1

    .line 321
    invoke-virtual {p0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lcn/xutils/commons/text/FormatFactory;->getFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/text/Format;

    move-result-object v4

    return-object v4

    .line 324
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "args":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "factory":Lcn/xutils/commons/text/FormatFactory;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 514
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 515
    return-void
.end method

.method private insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 411
    .local p2, "customPatterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    return-object p1

    .line 414
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 415
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 416
    .local v1, "pos":Ljava/text/ParsePosition;
    const/4 v2, -0x1

    .line 417
    .local v2, "fe":I
    const/4 v3, 0x0

    .line 418
    .local v3, "depth":I
    :goto_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 419
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 420
    .local v4, "c":C
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 437
    :sswitch_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 425
    :sswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 426
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcn/xutils/commons/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 428
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 429
    add-int/lit8 v2, v2, 0x1

    .line 430
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 431
    .local v5, "customPattern":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 432
    const/16 v6, 0x2c

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .end local v5    # "customPattern":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 422
    :sswitch_2
    invoke-direct {p0, p1, v1, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 423
    goto :goto_2

    .line 440
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 441
    invoke-direct {p0, v1}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    .line 443
    .end local v4    # "c":C
    :cond_2
    :goto_2
    goto :goto_0

    .line 444
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;
    .locals 1
    .param p1, "pos"    # Ljava/text/ParsePosition;

    .line 469
    invoke-virtual {p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 470
    return-object p1
.end method

.method private parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 377
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 378
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 379
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 380
    .local v1, "text":I
    const/4 v2, 0x1

    .line 381
    .local v2, "depth":I
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 382
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 387
    :sswitch_0
    add-int/lit8 v2, v2, -0x1

    .line 388
    if-nez v2, :cond_0

    .line 389
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 384
    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    .line 385
    goto :goto_1

    .line 393
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->getQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 394
    nop

    .line 381
    :cond_0
    :goto_1
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 399
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_1
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 335
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 336
    .local v0, "start":I
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 339
    .local v2, "error":Z
    :goto_0
    if-nez v2, :cond_3

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 340
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 341
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    const/16 v5, 0x7d

    const/16 v6, 0x2c

    if-eqz v4, :cond_0

    .line 342
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 343
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 344
    if-eq v3, v6, :cond_0

    if-eq v3, v5, :cond_0

    .line 345
    const/4 v2, 0x1

    .line 346
    goto :goto_1

    .line 349
    :cond_0
    if-eq v3, v6, :cond_1

    if-ne v3, v5, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 351
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 352
    :catch_0
    move-exception v4

    .line 357
    :cond_2
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v2, v4

    .line 358
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 339
    .end local v3    # "c":C
    :goto_1
    invoke-direct {p0, p2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto :goto_0

    .line 360
    :cond_3
    if-eqz v2, :cond_4

    .line 361
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid format argument index at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 363
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unterminated format element at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 457
    .local v0, "buffer":[C
    :cond_0
    invoke-static {}, Lcn/xutils/commons/text/StrMatcher;->splitMatcher()Lcn/xutils/commons/text/StrMatcher;

    move-result-object v1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcn/xutils/commons/text/StrMatcher;->isMatch([CI)I

    move-result v1

    .line 458
    .local v1, "len":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 459
    if-lez v1, :cond_1

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 460
    :cond_1
    return-void
.end method


# virtual methods
.method public final applyPattern(Ljava/lang/String;)V
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 156
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 158
    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "foundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/Format;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v1, "foundDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v2, "stripCustom":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 165
    .local v3, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 166
    .local v5, "c":[C
    const/4 v6, 0x0

    .line 167
    .local v6, "fmtCount":I
    :goto_0
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 168
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_4

    .line 173
    :sswitch_0
    add-int/lit8 v6, v6, 0x1

    .line 174
    invoke-direct {p0, p1, v3}, Lcn/xutils/commons/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 175
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 176
    .local v7, "start":I
    invoke-direct {p0, v3}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lcn/xutils/commons/text/ExtendedMessageFormat;->readArgumentIndex(Ljava/lang/String;Ljava/text/ParsePosition;)I

    move-result v8

    .line 177
    .local v8, "index":I
    const/16 v9, 0x7b

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {p0, p1, v3}, Lcn/xutils/commons/text/ExtendedMessageFormat;->seekNonWs(Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 179
    const/4 v9, 0x0

    .line 180
    .local v9, "format":Ljava/text/Format;
    const/4 v10, 0x0

    .line 181
    .local v10, "formatDescription":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    aget-char v11, v5, v11

    const/16 v12, 0x2c

    if-ne v11, v12, :cond_1

    .line 182
    nop

    .line 183
    invoke-direct {p0, v3}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    move-result-object v11

    .line 182
    invoke-direct {p0, p1, v11}, Lcn/xutils/commons/text/ExtendedMessageFormat;->parseFormatDescription(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 184
    invoke-direct {p0, v10}, Lcn/xutils/commons/text/ExtendedMessageFormat;->getFormat(Ljava/lang/String;)Ljava/text/Format;

    move-result-object v9

    .line 185
    if-nez v9, :cond_1

    .line 186
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_1
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    if-nez v9, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    move-object v11, v10

    :goto_1
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v6, :cond_3

    move v11, v12

    goto :goto_2

    :cond_3
    move v11, v4

    :goto_2
    invoke-static {v11}, Lcn/xutils/commons/Validate;->isTrue(Z)V

    .line 192
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ne v11, v6, :cond_4

    goto :goto_3

    :cond_4
    move v12, v4

    :goto_3
    invoke-static {v12}, Lcn/xutils/commons/Validate;->isTrue(Z)V

    .line 193
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    aget-char v11, v5, v11

    const/16 v12, 0x7d

    if-ne v11, v12, :cond_5

    goto :goto_4

    .line 194
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unreadable format element at position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    .end local v7    # "start":I
    .end local v8    # "index":I
    .end local v9    # "format":Ljava/text/Format;
    .end local v10    # "formatDescription":Ljava/lang/String;
    :sswitch_1
    invoke-direct {p0, p1, v3, v2}, Lcn/xutils/commons/text/ExtendedMessageFormat;->appendQuotedString(Ljava/lang/String;Ljava/text/ParsePosition;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 171
    goto/16 :goto_0

    .line 199
    :goto_4
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    aget-char v7, v5, v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {p0, v3}, Lcn/xutils/commons/text/ExtendedMessageFormat;->next(Ljava/text/ParsePosition;)Ljava/text/ParsePosition;

    goto/16 :goto_0

    .line 203
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-super {p0, v4}, Ljava/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 204
    invoke-super {p0}, Ljava/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcn/xutils/commons/text/ExtendedMessageFormat;->insertFormats(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    .line 205
    invoke-direct {p0, v0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->containsElements(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 206
    invoke-virtual {p0}, Lcn/xutils/commons/text/ExtendedMessageFormat;->getFormats()[Ljava/text/Format;

    move-result-object v4

    .line 209
    .local v4, "origFormats":[Ljava/text/Format;
    const/4 v7, 0x0

    .line 210
    .local v7, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    .line 211
    .local v9, "f":Ljava/text/Format;
    if-eqz v9, :cond_7

    .line 212
    aput-object v9, v4, v7

    .line 214
    :cond_7
    nop

    .end local v9    # "f":Ljava/text/Format;
    add-int/lit8 v7, v7, 0x1

    .line 215
    goto :goto_5

    .line 216
    :cond_8
    invoke-super {p0, v4}, Ljava/text/MessageFormat;->setFormats([Ljava/text/Format;)V

    .line 218
    .end local v4    # "origFormats":[Ljava/text/Format;
    .end local v7    # "i":I
    :cond_9
    return-void

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 274
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 275
    return v0

    .line 277
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 278
    return v1

    .line 280
    :cond_1
    invoke-super {p0, p1}, Ljava/text/MessageFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 281
    return v1

    .line 283
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/xutils/commons/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 284
    return v1

    .line 286
    :cond_3
    move-object v2, p1

    check-cast v2, Lcn/xutils/commons/text/ExtendedMessageFormat;

    .line 287
    .local v2, "rhs":Lcn/xutils/commons/text/ExtendedMessageFormat;
    iget-object v3, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    iget-object v4, v2, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/xutils/commons/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    return v1

    .line 290
    :cond_4
    iget-object v1, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    iget-object v3, v2, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v1, v3}, Lcn/xutils/commons/ObjectUtils;->notEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 298
    invoke-super {p0}, Ljava/text/MessageFormat;->hashCode()I

    move-result v0

    .line 299
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->registry:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 300
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 301
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 1
    .param p1, "formatElementIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 1
    .param p1, "argumentIndex"    # I
    .param p2, "newFormat"    # Ljava/text/Format;

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 1
    .param p1, "newFormats"    # [Ljava/text/Format;

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcn/xutils/commons/text/ExtendedMessageFormat;->toPattern:Ljava/lang/String;

    return-object v0
.end method
