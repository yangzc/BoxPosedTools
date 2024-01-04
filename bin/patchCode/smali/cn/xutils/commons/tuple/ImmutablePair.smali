.class public Lcn/xutils/commons/tuple/ImmutablePair;
.super Lcn/xutils/commons/tuple/Pair;
.source "ImmutablePair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/tuple/Pair<",
        "T",
        "L;",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "**>;"
        }
    .end annotation
.end field

.field private static final NULL:Lcn/xutils/commons/tuple/ImmutablePair;

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/tuple/ImmutablePair;

    sput-object v0, Lcn/xutils/commons/tuple/ImmutablePair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutablePair;

    .line 54
    new-instance v0, Lcn/xutils/commons/tuple/ImmutablePair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcn/xutils/commons/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcn/xutils/commons/tuple/ImmutablePair;->NULL:Lcn/xutils/commons/tuple/ImmutablePair;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TR;)V"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutablePair;, "Lcn/xutils/commons/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lcn/xutils/commons/tuple/Pair;-><init>()V

    .line 181
    iput-object p1, p0, Lcn/xutils/commons/tuple/ImmutablePair;->left:Ljava/lang/Object;

    .line 182
    iput-object p2, p0, Lcn/xutils/commons/tuple/ImmutablePair;->right:Ljava/lang/Object;

    .line 183
    return-void
.end method

.method public static emptyArray()[Lcn/xutils/commons/tuple/ImmutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 70
    sget-object v0, Lcn/xutils/commons/tuple/ImmutablePair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutablePair;

    return-object v0
.end method

.method public static left(Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 86
    .local p0, "left":Ljava/lang/Object;, "TL;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static nullPair()Lcn/xutils/commons/tuple/ImmutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 99
    sget-object v0, Lcn/xutils/commons/tuple/ImmutablePair;->NULL:Lcn/xutils/commons/tuple/ImmutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;
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
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 115
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/xutils/commons/tuple/ImmutablePair;->nullPair()Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcn/xutils/commons/tuple/ImmutablePair;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lcn/xutils/commons/tuple/ImmutablePair;
    .locals 3
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
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 131
    .local p0, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TL;TR;>;"
    if-eqz p0, :cond_0

    new-instance v0, Lcn/xutils/commons/tuple/ImmutablePair;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcn/xutils/commons/tuple/ImmutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/xutils/commons/tuple/ImmutablePair;->nullPair()Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TR;)",
            "Lcn/xutils/commons/tuple/ImmutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 149
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    const-string v0, "left"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "right"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method

.method public static right(Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Lcn/xutils/commons/tuple/Pair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 165
    .local p0, "right":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcn/xutils/commons/tuple/ImmutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutablePair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLeft()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation

    .line 190
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutablePair;, "Lcn/xutils/commons/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/ImmutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 198
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutablePair;, "Lcn/xutils/commons/tuple/ImmutablePair<TL;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/ImmutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutablePair;, "Lcn/xutils/commons/tuple/ImmutablePair<TL;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
