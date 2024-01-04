.class Lcn/xutils/commons/time/DurationFormatUtils$Token;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/DurationFormatUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Lcn/xutils/commons/time/DurationFormatUtils$Token;


# instance fields
.field private count:I

.field private final value:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_ARRAY()[Lcn/xutils/commons/time/DurationFormatUtils$Token;
    .locals 1

    sget-object v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->EMPTY_ARRAY:[Lcn/xutils/commons/time/DurationFormatUtils$Token;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 570
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/time/DurationFormatUtils$Token;

    sput-object v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->EMPTY_ARRAY:[Lcn/xutils/commons/time/DurationFormatUtils$Token;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 592
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcn/xutils/commons/time/DurationFormatUtils$Token;-><init>(Ljava/lang/Object;I)V

    .line 593
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "count"    # I

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    const-string v0, "value"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    .line 604
    iput p2, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    .line 605
    return-void
.end method

.method static containsTokenWithValue([Lcn/xutils/commons/time/DurationFormatUtils$Token;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "tokens"    # [Lcn/xutils/commons/time/DurationFormatUtils$Token;
    .param p1, "value"    # Ljava/lang/Object;

    .line 580
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/time/DurationFormatUtils$Token$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/xutils/commons/time/DurationFormatUtils$Token$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$containsTokenWithValue$0(Ljava/lang/Object;Lcn/xutils/commons/time/DurationFormatUtils$Token;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "token"    # Lcn/xutils/commons/time/DurationFormatUtils$Token;

    .line 580
    invoke-virtual {p1}, Lcn/xutils/commons/time/DurationFormatUtils$Token;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 640
    instance-of v0, p1, Lcn/xutils/commons/time/DurationFormatUtils$Token;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 641
    move-object v0, p1

    check-cast v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;

    .line 642
    .local v0, "tok2":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    iget-object v2, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 643
    return v1

    .line 645
    :cond_0
    iget v2, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    iget v3, v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    if-eq v2, v3, :cond_1

    .line 646
    return v1

    .line 648
    :cond_1
    iget-object v2, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_2

    .line 649
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 651
    :cond_2
    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 652
    iget-object v1, v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 654
    :cond_3
    iget-object v3, v0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    .line 656
    .end local v0    # "tok2":Lcn/xutils/commons/time/DurationFormatUtils$Token;
    :cond_5
    return v1
.end method

.method getCount()I
    .locals 1

    .line 620
    iget v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    return v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .line 629
    iget-object v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 668
    iget-object v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method increment()V
    .locals 1

    .line 611
    iget v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    .line 612
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 678
    iget-object v0, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/DurationFormatUtils$Token;->count:I

    invoke-static {v0, v1}, Lcn/xutils/commons/StringUtils;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
