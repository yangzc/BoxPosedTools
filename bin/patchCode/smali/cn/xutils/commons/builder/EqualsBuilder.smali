.class public Lcn/xutils/commons/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Lcn/xutils/commons/tuple/Pair<",
            "Lcn/xutils/commons/builder/IDKey;",
            "Lcn/xutils/commons/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private bypassReflectionClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private excludeFields:[Ljava/lang/String;

.field private isEquals:Z

.field private reflectUpToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private testRecursive:Z

.field private testTransients:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcn/xutils/commons/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    .line 218
    const-class v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method private appendArray(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 639
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 640
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    goto/16 :goto_0

    .line 641
    :cond_0
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 642
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([J[J)Lcn/xutils/commons/builder/EqualsBuilder;

    goto/16 :goto_0

    .line 643
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 644
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([I[I)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 645
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 646
    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([S[S)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 647
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 648
    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([C[C)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 649
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 650
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([B[B)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 651
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 652
    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([D[D)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 653
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 654
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([F[F)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 655
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 656
    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([Z[Z)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 659
    :cond_8
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 661
    :goto_0
    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;
    .locals 3
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcn/xutils/commons/tuple/Pair<",
            "Lcn/xutils/commons/builder/IDKey;",
            "Lcn/xutils/commons/builder/IDKey;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Lcn/xutils/commons/builder/IDKey;

    invoke-direct {v0, p0}, Lcn/xutils/commons/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 136
    .local v0, "left":Lcn/xutils/commons/builder/IDKey;
    new-instance v1, Lcn/xutils/commons/builder/IDKey;

    invoke-direct {v1, p1}, Lcn/xutils/commons/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v1, "right":Lcn/xutils/commons/builder/IDKey;
    invoke-static {v0, v1}, Lcn/xutils/commons/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcn/xutils/commons/tuple/Pair<",
            "Lcn/xutils/commons/builder/IDKey;",
            "Lcn/xutils/commons/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcn/xutils/commons/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 153
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;

    move-result-object v1

    .line 154
    .local v1, "pair":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;"
    invoke-virtual {v1}, Lcn/xutils/commons/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/xutils/commons/builder/IDKey;

    invoke-virtual {v1}, Lcn/xutils/commons/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/xutils/commons/builder/IDKey;

    invoke-static {v2, v3}, Lcn/xutils/commons/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;

    move-result-object v2

    .line 156
    .local v2, "swappedPair":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;"
    if-eqz v0, :cond_1

    .line 157
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 156
    :goto_0
    return v3
.end method

.method private reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 5
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 555
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    return-void

    .line 560
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 561
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 562
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 563
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    iget-boolean v2, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v2, :cond_3

    .line 564
    aget-object v2, v0, v1

    .line 565
    .local v2, "field":Ljava/lang/reflect/Field;
    iget-object v3, p0, Lcn/xutils/commons/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/xutils/commons/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 566
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcn/xutils/commons/builder/EqualsBuilder;->testTransients:Z

    if-nez v3, :cond_1

    .line 567
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 568
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Lcn/xutils/commons/builder/EqualsExclude;

    .line 569
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 570
    invoke-static {v2, p1}, Lcn/xutils/commons/builder/Reflection;->getUnchecked(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, p2}, Lcn/xutils/commons/builder/Reflection;->getUnchecked(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcn/xutils/commons/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "i":I
    :cond_3
    invoke-static {p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    nop

    .line 576
    return-void

    .line 574
    :catchall_0
    move-exception v0

    invoke-static {p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 575
    throw v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 310
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .line 363
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p4, "testRecursive"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;Z[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 438
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p0, p1, :cond_0

    .line 439
    const/4 v0, 0x1

    return v0

    .line 441
    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    new-instance v0, Lcn/xutils/commons/builder/EqualsBuilder;

    invoke-direct {v0}, Lcn/xutils/commons/builder/EqualsBuilder;-><init>()V

    .line 445
    invoke-virtual {v0, p5}, Lcn/xutils/commons/builder/EqualsBuilder;->setExcludeFields([Ljava/lang/String;)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    .line 446
    invoke-virtual {v0, p3}, Lcn/xutils/commons/builder/EqualsBuilder;->setReflectUpToClass(Ljava/lang/Class;)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    .line 447
    invoke-virtual {v0, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->setTestTransients(Z)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    .line 448
    invoke-virtual {v0, p4}, Lcn/xutils/commons/builder/EqualsBuilder;->setTestRecursive(Z)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    .line 449
    invoke-virtual {v0, p0, p1}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    .line 450
    invoke-virtual {v0}, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    .line 444
    return v0

    .line 442
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 397
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;Z[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .line 336
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 168
    invoke-static {}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 169
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;>;"
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 171
    sget-object v1, Lcn/xutils/commons/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 173
    :cond_0
    invoke-static {p0, p1}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;

    move-result-object v1

    .line 174
    .local v1, "pair":Lcn/xutils/commons/tuple/Pair;, "Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 189
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lcn/xutils/commons/tuple/Pair<Lcn/xutils/commons/builder/IDKey;Lcn/xutils/commons/builder/IDKey;>;>;"
    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p1}, Lcn/xutils/commons/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/tuple/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    sget-object v1, Lcn/xutils/commons/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public append(BB)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .line 733
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 734
    return-object p0

    .line 736
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 737
    return-object p0
.end method

.method public append(CC)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .line 718
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 719
    return-object p0

    .line 721
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 722
    return-object p0
.end method

.method public append(DD)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .line 754
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 755
    return-object p0

    .line 757
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/xutils/commons/builder/EqualsBuilder;->append(JJ)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(FF)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .line 774
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 775
    return-object p0

    .line 777
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/xutils/commons/builder/EqualsBuilder;->append(II)Lcn/xutils/commons/builder/EqualsBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(II)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .line 688
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 689
    return-object p0

    .line 691
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 692
    return-object p0
.end method

.method public append(JJ)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .line 673
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 674
    return-object p0

    .line 676
    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 677
    return-object p0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 605
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 606
    return-object p0

    .line 608
    :cond_0
    if-ne p1, p2, :cond_1

    .line 609
    return-object p0

    .line 611
    :cond_1
    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 615
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 616
    .local v0, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 619
    invoke-direct {p0, p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->appendArray(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 621
    :cond_3
    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->testRecursive:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPrimitiveOrWrapper(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 622
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_0

    .line 624
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 626
    :goto_0
    return-object p0

    .line 612
    .end local v0    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 613
    return-object p0
.end method

.method public append(SS)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .line 703
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 704
    return-object p0

    .line 706
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 707
    return-object p0
.end method

.method public append(ZZ)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .line 788
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 789
    return-object p0

    .line 791
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 792
    return-object p0
.end method

.method public append([B[B)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .line 964
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 965
    return-object p0

    .line 967
    :cond_0
    if-ne p1, p2, :cond_1

    .line 968
    return-object p0

    .line 970
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 974
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 975
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 976
    return-object p0

    .line 978
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 979
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(BB)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 971
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 972
    return-object p0
.end method

.method public append([C[C)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .line 933
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 934
    return-object p0

    .line 936
    :cond_0
    if-ne p1, p2, :cond_1

    .line 937
    return-object p0

    .line 939
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 943
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 944
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 945
    return-object p0

    .line 947
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 948
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(CC)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 950
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 940
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 941
    return-object p0
.end method

.method public append([D[D)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .line 995
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 996
    return-object p0

    .line 998
    :cond_0
    if-ne p1, p2, :cond_1

    .line 999
    return-object p0

    .line 1001
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1005
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 1006
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1007
    return-object p0

    .line 1009
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 1010
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/xutils/commons/builder/EqualsBuilder;->append(DD)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 1009
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1012
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 1002
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1003
    return-object p0
.end method

.method public append([F[F)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .line 1026
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 1027
    return-object p0

    .line 1029
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1030
    return-object p0

    .line 1032
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1036
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 1037
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1038
    return-object p0

    .line 1040
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 1041
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(FF)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 1040
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 1033
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1034
    return-object p0
.end method

.method public append([I[I)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .line 871
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 872
    return-object p0

    .line 874
    :cond_0
    if-ne p1, p2, :cond_1

    .line 875
    return-object p0

    .line 877
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 881
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 882
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 883
    return-object p0

    .line 885
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 886
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(II)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 888
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 878
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 879
    return-object p0
.end method

.method public append([J[J)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .line 840
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 841
    return-object p0

    .line 843
    :cond_0
    if-ne p1, p2, :cond_1

    .line 844
    return-object p0

    .line 846
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 850
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 851
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 852
    return-object p0

    .line 854
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 855
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/xutils/commons/builder/EqualsBuilder;->append(JJ)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 847
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 848
    return-object p0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .line 809
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 810
    return-object p0

    .line 812
    :cond_0
    if-ne p1, p2, :cond_1

    .line 813
    return-object p0

    .line 815
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 819
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 820
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 821
    return-object p0

    .line 823
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 824
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 826
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 816
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 817
    return-object p0
.end method

.method public append([S[S)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .line 902
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 903
    return-object p0

    .line 905
    :cond_0
    if-ne p1, p2, :cond_1

    .line 906
    return-object p0

    .line 908
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 912
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 913
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 914
    return-object p0

    .line 916
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 917
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(SS)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 916
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 919
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 909
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 910
    return-object p0
.end method

.method public append([Z[Z)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 3
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .line 1057
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 1058
    return-object p0

    .line 1060
    :cond_0
    if-ne p1, p2, :cond_1

    .line 1061
    return-object p0

    .line 1063
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_2

    goto :goto_1

    .line 1067
    :cond_2
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_3

    .line 1068
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1069
    return-object p0

    .line 1071
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    iget-boolean v1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_4

    .line 1072
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(ZZ)Lcn/xutils/commons/builder/EqualsBuilder;

    .line 1071
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1074
    .end local v0    # "i":I
    :cond_4
    return-object p0

    .line 1064
    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/EqualsBuilder;->setEquals(Z)V

    .line 1065
    return-object p0
.end method

.method public appendSuper(Z)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .line 586
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 587
    return-object p0

    .line 589
    :cond_0
    iput-boolean p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 590
    return-object p0
.end method

.method public build()Ljava/lang/Boolean;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcn/xutils/commons/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .locals 1

    .line 1084
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .line 481
    iget-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .line 482
    return-object p0

    .line 484
    :cond_0
    if-ne p1, p2, :cond_1

    .line 485
    return-object p0

    .line 487
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-nez p2, :cond_2

    goto/16 :goto_4

    .line 496
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 497
    .local v1, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 499
    .local v2, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 500
    move-object v3, v1

    .line 501
    .local v3, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 503
    move-object v3, v2

    goto :goto_0

    .line 505
    .end local v3    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 506
    move-object v3, v2

    .line 507
    .restart local v3    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 509
    move-object v3, v1

    .line 518
    :cond_4
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 519
    invoke-virtual {p0, p1, p2}, Lcn/xutils/commons/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/EqualsBuilder;

    goto :goto_2

    .line 521
    :cond_5
    iget-object v4, p0, Lcn/xutils/commons/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 522
    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcn/xutils/commons/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 523
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    goto :goto_2

    .line 525
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 526
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcn/xutils/commons/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    if-eq v3, v4, :cond_8

    .line 527
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object v3, v4

    .line 528
    invoke-direct {p0, p1, p2, v3}, Lcn/xutils/commons/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 538
    :cond_8
    :goto_2
    goto :goto_3

    .line 531
    :catch_0
    move-exception v4

    .line 537
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 539
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3
    return-object p0

    .line 513
    .end local v3    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 514
    return-object p0

    .line 488
    .end local v1    # "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    :goto_4
    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 489
    return-object p0
.end method

.method public reset()V
    .locals 1

    .line 1116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 1117
    return-void
.end method

.method public setBypassReflectionClasses(Ljava/util/List;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Lcn/xutils/commons/builder/EqualsBuilder;"
        }
    .end annotation

    .line 260
    .local p1, "bypassReflectionClasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    iput-object p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->bypassReflectionClasses:Ljava/util/List;

    .line 261
    return-object p0
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .line 1108
    iput-boolean p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->isEquals:Z

    .line 1109
    return-void
.end method

.method public varargs setExcludeFields([Ljava/lang/String;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 0
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->excludeFields:[Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public setReflectUpToClass(Ljava/lang/Class;)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcn/xutils/commons/builder/EqualsBuilder;"
        }
    .end annotation

    .line 271
    .local p1, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->reflectUpToClass:Ljava/lang/Class;

    .line 272
    return-object p0
.end method

.method public setTestRecursive(Z)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 0
    .param p1, "testRecursive"    # Z

    .line 242
    iput-boolean p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->testRecursive:Z

    .line 243
    return-object p0
.end method

.method public setTestTransients(Z)Lcn/xutils/commons/builder/EqualsBuilder;
    .locals 0
    .param p1, "testTransients"    # Z

    .line 228
    iput-boolean p1, p0, Lcn/xutils/commons/builder/EqualsBuilder;->testTransients:Z

    .line 229
    return-object p0
.end method
