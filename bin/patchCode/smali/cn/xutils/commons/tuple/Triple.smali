.class public abstract Lcn/xutils/commons/tuple/Triple;
.super Ljava/lang/Object;
.source "Triple.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


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
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcn/xutils/commons/tuple/Triple<",
        "T",
        "L;",
        "TM;TR;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Triple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcn/xutils/commons/tuple/Triple<",
            "***>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    new-array v0, v0, [Lcn/xutils/commons/tuple/Triple;

    sput-object v0, Lcn/xutils/commons/tuple/Triple;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Triple;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyArray()[Lcn/xutils/commons/tuple/Triple;
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
            "Lcn/xutils/commons/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcn/xutils/commons/tuple/Triple;->EMPTY_ARRAY:[Lcn/xutils/commons/tuple/Triple;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Triple;
    .locals 1
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
            "Lcn/xutils/commons/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 85
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/tuple/ImmutableTriple;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutableTriple;

    move-result-object v0

    return-object v0
.end method

.method public static ofNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Triple;
    .locals 1
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
            "Lcn/xutils/commons/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;"
        }
    .end annotation

    .line 105
    .local p0, "left":Ljava/lang/Object;, "TL;"
    .local p1, "middle":Ljava/lang/Object;, "TM;"
    .local p2, "right":Ljava/lang/Object;, "TR;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/tuple/ImmutableTriple;->ofNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/ImmutableTriple;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcn/xutils/commons/tuple/Triple;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/tuple/Triple<",
            "T",
            "L;",
            "TM;TR;>;)I"
        }
    .end annotation

    .line 118
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    .local p1, "other":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    new-instance v0, Lcn/xutils/commons/builder/CompareToBuilder;

    invoke-direct {v0}, Lcn/xutils/commons/builder/CompareToBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/CompareToBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/CompareToBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/xutils/commons/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/CompareToBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/builder/CompareToBuilder;->toComparison()I

    move-result v0

    .line 118
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 40
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    check-cast p1, Lcn/xutils/commons/tuple/Triple;

    invoke-virtual {p0, p1}, Lcn/xutils/commons/tuple/Triple;->compareTo(Lcn/xutils/commons/tuple/Triple;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 131
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 132
    return v0

    .line 134
    :cond_0
    instance-of v1, p1, Lcn/xutils/commons/tuple/Triple;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 135
    move-object v1, p1

    check-cast v1, Lcn/xutils/commons/tuple/Triple;

    .line 136
    .local v1, "other":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<***>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 140
    .end local v1    # "other":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<***>;"
    :cond_2
    return v2
.end method

.method public abstract getLeft()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()T",
            "L;"
        }
    .end annotation
.end method

.method public abstract getMiddle()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
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

.method public hashCode()I
    .locals 2

    .line 171
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 181
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "format"    # Ljava/lang/String;

    .line 196
    .local p0, "this":Lcn/xutils/commons/tuple/Triple;, "Lcn/xutils/commons/tuple/Triple<TL;TM;TR;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getLeft()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getMiddle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcn/xutils/commons/tuple/Triple;->getRight()Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
