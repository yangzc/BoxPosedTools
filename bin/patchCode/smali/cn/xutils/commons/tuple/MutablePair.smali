.class public Lcn/xutils/commons/tuple/MutablePair;
.super Lcn/xutils/commons/tuple/Pair;
.source "MutablePair.java"


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
.field public static final EMPTY_ARRAY:[Lcn/xutils/commons/tuple/MutablePair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/xutils/commons/tuple/MutablePair<",
            "**>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x44c3687a6deaffd1L


# instance fields
.field public left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/tuple/MutablePair;

    sput-object v0, Lcn/xutils/commons/tuple/MutablePair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/MutablePair;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 128
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    invoke-direct {p0}, Lcn/xutils/commons/tuple/Pair;-><init>()V

    .line 129
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

    .line 137
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lcn/xutils/commons/tuple/Pair;-><init>()V

    .line 138
    iput-object p1, p0, Lcn/xutils/commons/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 139
    iput-object p2, p0, Lcn/xutils/commons/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public static emptyArray()[Lcn/xutils/commons/tuple/MutablePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcn/xutils/commons/tuple/MutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 58
    sget-object v0, Lcn/xutils/commons/tuple/MutablePair;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/MutablePair;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/MutablePair;
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
            "Lcn/xutils/commons/tuple/MutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 74
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    new-instance v0, Lcn/xutils/commons/tuple/MutablePair;

    invoke-direct {v0, p0, p1}, Lcn/xutils/commons/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/util/Map$Entry;)Lcn/xutils/commons/tuple/MutablePair;
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
            "Lcn/xutils/commons/tuple/MutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 91
    .local p0, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TL;TR;>;"
    if-eqz p0, :cond_0

    .line 92
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "left":Ljava/lang/Object;, "TL;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .local v1, "right":Ljava/lang/Object;, "TR;"
    goto :goto_0

    .line 95
    .end local v0    # "left":Ljava/lang/Object;, "TL;"
    .end local v1    # "right":Ljava/lang/Object;, "TR;"
    :cond_0
    const/4 v0, 0x0

    .line 96
    .restart local v0    # "left":Ljava/lang/Object;, "TL;"
    const/4 v1, 0x0

    .line 98
    .restart local v1    # "right":Ljava/lang/Object;, "TR;"
    :goto_0
    new-instance v2, Lcn/xutils/commons/tuple/MutablePair;

    invoke-direct {v2, v0, v1}, Lcn/xutils/commons/tuple/MutablePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/MutablePair;
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
            "Lcn/xutils/commons/tuple/MutablePair<",
            "T",
            "L;",
            "TR;>;"
        }
    .end annotation

    .line 116
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    const-string v0, "left"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "right"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/tuple/MutablePair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/MutablePair;

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

    .line 147
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/MutablePair;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/MutablePair;->right:Ljava/lang/Object;

    return-object v0
.end method

.method public setLeft(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    iput-object p1, p0, Lcn/xutils/commons/tuple/MutablePair;->left:Ljava/lang/Object;

    .line 165
    return-void
.end method

.method public setRight(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    .local p1, "right":Ljava/lang/Object;, "TR;"
    iput-object p1, p0, Lcn/xutils/commons/tuple/MutablePair;->right:Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TR;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lcn/xutils/commons/tuple/MutablePair;, "Lcn/xutils/commons/tuple/MutablePair<TL;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/MutablePair;->getRight()Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "result":Ljava/lang/Object;, "TR;"
    invoke-virtual {p0, p1}, Lcn/xutils/commons/tuple/MutablePair;->setRight(Ljava/lang/Object;)V

    .line 187
    return-object v0
.end method
