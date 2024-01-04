.class public abstract Lcn/xutils/commons/tuple/Pair;
.super Ljava/lang/Object;
.source "Pair.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "T",
        "L;",
        "TR;>;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/tuple/Pair<",
        "T",
        "L;",
        "TR;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/xutils/commons/tuple/Pair<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/tuple/Pair;

    sput-object v0, Lcn/xutils/commons/tuple/Pair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Pair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyArray()[Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 69
    sget-object v0, Lcn/xutils/commons/tuple/Pair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Pair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 85
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    invoke-static {p0, p1}, Lcn/xutils/commons/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "T",
            "L;",
            "TR;>;)",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 101
    .local p0, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TL;TR;>;"
    invoke-static {p0}, Lcn/xutils/commons/tuple/ImmutablePair;->of(Ljava/util/Map$Entry;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 119
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    invoke-static {p0, p1}, Lcn/xutils/commons/tuple/ImmutablePair;->ofNonNull(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public accept(Lcn/xutils/commons/function/FailableBiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiConsumer<",
            "T",
            "L;",
            "TR;TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 131
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    .local p1, "consumer":Lcn/xutils/commons/function/FailableBiConsumer;, "Lcn/xutils/commons/function/FailableBiConsumer<TL;TR;TE;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcn/xutils/commons/function/FailableBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public apply(Lcn/xutils/commons/function/FailableBiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcn/xutils/commons/function/FailableBiFunction<",
            "T",
            "L;",
            "TR;TV;TE;>;)TV;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 145
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    .local p1, "function":Lcn/xutils/commons/function/FailableBiFunction;, "Lcn/xutils/commons/function/FailableBiFunction<TL;TR;TV;TE;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcn/xutils/commons/function/FailableBiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Lcn/xutils/commons/tuple/Pair;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;)I"
        }
    .end annotation

    .line 157
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    .local p1, "other":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    new-instance v0, Lcn/xutils/commons/builder/CompareToBuilder;

    invoke-direct {v0}, Lcn/xutils/commons/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/CompareToBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/builder/CompareToBuilder;->toComparison()I

    move-result v0

    .line 157
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    check-cast p1, Lcn/xutils/commons/tuple/Pair;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/tuple/Pair;->compareTo(Lcn/xutils/commons/tuple/Pair;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 169
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 170
    return v0

    .line 172
    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 173
    move-object v1, p1

    check-cast v1, Ljava/util/Map$Entry;

    .line 174
    .local v1, "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 174
    :goto_0
    return v0

    .line 177
    .end local v1    # "other":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_2
    return v2
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLeft()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getRight()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 233
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .line 258
    .local p0, "this":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<TL;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
