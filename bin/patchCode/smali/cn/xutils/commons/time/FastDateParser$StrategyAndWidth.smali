.class Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;
.super Ljava/lang/Object;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyAndWidth"
.end annotation


# instance fields
.field final strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

.field final width:I


# direct methods
.method constructor <init>(Lcn/xutils/commons/time/FastDateParser$Strategy;I)V
    .locals 0
    .param p1, "strategy"    # Lcn/xutils/commons/time/FastDateParser$Strategy;
    .param p2, "width"    # I

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 198
    iput p2, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->width:I

    .line 199
    return-void
.end method


# virtual methods
.method getMaxWidth(Ljava/util/ListIterator;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;",
            ">;)I"
        }
    .end annotation

    .line 202
    .local p1, "lt":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;>;"
    iget-object v0, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;

    iget-object v0, v0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

    .line 206
    .local v0, "nextStrategy":Lcn/xutils/commons/time/FastDateParser$Strategy;
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 207
    invoke-virtual {v0}, Lcn/xutils/commons/time/FastDateParser$Strategy;->isNumber()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->width:I

    :cond_1
    return v1

    .line 203
    .end local v0    # "nextStrategy":Lcn/xutils/commons/time/FastDateParser$Strategy;
    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrategyAndWidth [strategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->strategy:Lcn/xutils/commons/time/FastDateParser$Strategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/xutils/commons/time/FastDateParser$StrategyAndWidth;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
