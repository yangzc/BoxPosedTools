.class public Lcn/xutils/commons/tuple/ImmutableTriple;
.super Lcn/xutils/commons/tuple/Triple;
.source "ImmutableTriple.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcn/xutils/commons/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutableTriple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/xutils/commons/tuple/ImmutableTriple<",
            "***>;"
        }
    .end annotation
.end field

.field private static final NULL:Lcn/xutils/commons/tuple/ImmutableTriple;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field public final middle:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
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

    new-array v0, v0, [Lcn/xutils/commons/tuple/ImmutableTriple;

    sput-object v0, Lcn/xutils/commons/tuple/ImmutableTriple;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutableTriple;

    .line 54
    new-instance v0, Lcn/xutils/commons/tuple/ImmutableTriple;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcn/xutils/commons/tuple/ImmutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcn/xutils/commons/tuple/ImmutableTriple;->NULL:Lcn/xutils/commons/tuple/ImmutableTriple;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "TM;TR;)V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutableTriple;, "Lcn/xutils/commons/tuple/ImmutableTriple<TL;TM;TR;>;"
    .local p1, "left":Ljava/lang/Object;, "TL;"
    .local p2, "middle":Ljava/lang/Object;, "TM;"
    .local p3, "right":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Lcn/xutils/commons/tuple/Triple;-><init>()V

    .line 142
    iput-object p1, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    .line 143
    iput-object p2, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    .line 144
    iput-object p3, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public static emptyArray()[Lcn/xutils/commons/tuple/ImmutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()[",
            "Lcn/xutils/commons/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lcn/xutils/commons/tuple/ImmutableTriple;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/ImmutableTriple;

    return-object v0
.end method

.method public static nullTriple()Lcn/xutils/commons/tuple/ImmutableTriple;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcn/xutils/commons/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcn/xutils/commons/tuple/ImmutableTriple;->NULL:Lcn/xutils/commons/tuple/ImmutableTriple;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutableTriple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lcn/xutils/commons/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 103
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    or-int/2addr v0, v2

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lcn/xutils/commons/tuple/ImmutableTriple;->nullTriple()Lcn/xutils/commons/tuple/ImmutableTriple;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v0, Lcn/xutils/commons/tuple/ImmutableTriple;

    invoke-direct {v0, p0, p1, p2}, Lcn/xutils/commons/tuple/ImmutableTriple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutableTriple;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            "M:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(T",
            "L;",
            "TM;TR;)",
            "Lcn/xutils/commons/tuple/ImmutableTriple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 123
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    const-string v0, "left"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "middle"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "right"

    invoke-static {p2, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/tuple/ImmutableTriple;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutableTriple;

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

    .line 152
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutableTriple;, "Lcn/xutils/commons/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->left:Ljava/lang/Object;

    return-object v0
.end method

.method public getMiddle()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutableTriple;, "Lcn/xutils/commons/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->middle:Ljava/lang/Object;

    return-object v0
.end method

.method public getRight()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lcn/xutils/commons/tuple/ImmutableTriple;, "Lcn/xutils/commons/tuple/ImmutableTriple<TL;TM;TR;>;"
    iget-object v0, p0, Lcn/xutils/commons/tuple/ImmutableTriple;->right:Ljava/lang/Object;

    return-object v0
.end method
