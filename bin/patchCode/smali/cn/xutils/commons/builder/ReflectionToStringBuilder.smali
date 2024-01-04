.class public Lcn/xutils/commons/builder/ReflectionToStringBuilder;
.super Lcn/xutils/commons/builder/ToStringBuilder;
.source "ReflectionToStringBuilder.java"


# instance fields
.field private appendStatics:Z

.field private appendTransients:Z

.field protected excludeFieldNames:[Ljava/lang/String;

.field private excludeNullValues:Z

.field protected includeFieldNames:[Ljava/lang/String;

.field private upToClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MuwDFrbA3G-IcKVjEbH-HfGjxvU(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wz_3fP0lKe0nTxShCl3CUhQhezg(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 493
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;)V

    .line 494
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 511
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V

    .line 512
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .line 535
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 536
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V
    .locals 1
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZ)V"
        }
    .end annotation

    .line 560
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 561
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 562
    invoke-virtual {p0, p5}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 563
    invoke-virtual {p0, p6}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 564
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZZ)V
    .locals 1
    .param p2, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;
    .param p5, "outputTransients"    # Z
    .param p6, "outputStatics"    # Z
    .param p7, "excludeNullValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/Class<",
            "-TT;>;ZZZ)V"
        }
    .end annotation

    .line 591
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-string v0, "obj"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 592
    invoke-virtual {p0, p4}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setUpToClass(Ljava/lang/Class;)V

    .line 593
    invoke-virtual {p0, p5}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setAppendTransients(Z)V

    .line 594
    invoke-virtual {p0, p6}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setAppendStatics(Z)V

    .line 595
    invoke-virtual {p0, p7}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setExcludeNullValues(Z)V

    .line 596
    return-void
.end method

.method static synthetic lambda$toNoNullStringArray$0(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 129
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method

.method static toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 114
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 116
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;

    .line 129
    invoke-static {p0}, Lcn/xutils/commons/stream/Streams;->nonNull([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v0, v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .line 228
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZ)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;
    .locals 8
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "ZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 386
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v7, Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZ)V

    .line 387
    invoke-virtual {v7}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    return-object v0
.end method

.method public static toString(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;ZZZLjava/lang/Class;)Ljava/lang/String;
    .locals 9
    .param p1, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .param p3, "outputStatics"    # Z
    .param p4, "excludeNullValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            "ZZZ",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 331
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p5, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v8, Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    const/4 v3, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p5

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;Ljava/lang/StringBuffer;Ljava/lang/Class;ZZZ)V

    .line 332
    invoke-virtual {v8}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    return-object v0
.end method

.method public static toStringExclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    .local p1, "excludeFieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toStringExclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFieldNames"    # [Ljava/lang/String;

    .line 413
    new-instance v0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setExcludeFieldNames([Ljava/lang/String;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toStringInclude(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 428
    .local p1, "includeFieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toStringInclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toStringInclude(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "includeFieldNames"    # [Ljava/lang/String;

    .line 443
    new-instance v0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    invoke-direct {v0, p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->setIncludeFieldNames([Ljava/lang/String;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validate()V
    .locals 2

    .line 865
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    iget-object v1, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcn/xutils/commons/ArrayUtils;->containsAny([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    return-void

    .line 866
    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/builder/ToStringStyle;->unregister(Ljava/lang/Object;)V

    .line 867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "includeFieldNames and excludeFieldNames must not intersect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected accept(Ljava/lang/reflect/Field;)Z
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 611
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 613
    return v2

    .line 615
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->isAppendTransients()Z

    move-result v0

    if-nez v0, :cond_1

    .line 617
    return v2

    .line 619
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->isAppendStatics()Z

    move-result v0

    if-nez v0, :cond_2

    .line 621
    return v2

    .line 624
    :cond_2
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 625
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 627
    return v2

    .line 630
    :cond_3
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    invoke-static {v0}, Lcn/xutils/commons/ArrayUtils;->isNotEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 632
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_4

    move v2, v1

    :cond_4
    return v2

    .line 635
    :cond_5
    const-class v0, Lcn/xutils/commons/builder/ToStringExclude;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method protected appendFieldsIn(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 650
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->reflectionAppendArray(Ljava/lang/Object;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;

    .line 652
    return-void

    .line 655
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/xutils/commons/ArraySorter;->sort([Ljava/lang/Object;Ljava/util/Comparator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    .line 656
    .local v0, "fields":[Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 657
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 658
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 659
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 661
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Lcn/xutils/commons/builder/Reflection;->getUnchecked(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 662
    .local v6, "fieldValue":Ljava/lang/Object;
    iget-boolean v7, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    if-eqz v7, :cond_1

    if-eqz v6, :cond_2

    .line 663
    :cond_1
    const-class v7, Lcn/xutils/commons/builder/ToStringSummary;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    xor-int/2addr v7, v1

    invoke-virtual {p0, v5, v6, v7}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Lcn/xutils/commons/builder/ToStringBuilder;

    .line 657
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "fieldName":Ljava/lang/String;
    .end local v6    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 667
    :cond_3
    return-void
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .line 675
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeFieldNames()[Ljava/lang/String;
    .locals 1

    .line 685
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getUpToClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected getValue(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isAppendStatics()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendStatics:Z

    return v0
.end method

.method public isAppendTransients()Z
    .locals 1

    .line 731
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendTransients:Z

    return v0
.end method

.method public isExcludeNullValues()Z
    .locals 1

    .line 741
    iget-boolean v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    return v0
.end method

.method public reflectionAppendArray(Ljava/lang/Object;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;

    .line 752
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getStyle()Lcn/xutils/commons/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcn/xutils/commons/builder/ToStringStyle;->reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    return-object p0
.end method

.method public setAppendStatics(Z)V
    .locals 0
    .param p1, "appendStatics"    # Z

    .line 764
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendStatics:Z

    .line 765
    return-void
.end method

.method public setAppendTransients(Z)V
    .locals 0
    .param p1, "appendTransients"    # Z

    .line 774
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendTransients:Z

    .line 775
    return-void
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;
    .locals 1
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;

    .line 785
    if-nez p1, :cond_0

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ArraySorter;->sort([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 791
    :goto_0
    return-object p0
.end method

.method public setExcludeNullValues(Z)V
    .locals 0
    .param p1, "excludeNullValues"    # Z

    .line 802
    iput-boolean p1, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->excludeNullValues:Z

    .line 803
    return-void
.end method

.method public varargs setIncludeFieldNames([Ljava/lang/String;)Lcn/xutils/commons/builder/ReflectionToStringBuilder;
    .locals 1
    .param p1, "includeFieldNamesParam"    # [Ljava/lang/String;

    .line 814
    if-nez p1, :cond_0

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    goto :goto_0

    .line 818
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ArraySorter;->sort([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->includeFieldNames:[Ljava/lang/String;

    .line 820
    :goto_0
    return-object p0
.end method

.method public setUpToClass(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 830
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 831
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    .line 832
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified class is not a superclass of the object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    .end local v0    # "object":Ljava/lang/Object;
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->upToClass:Ljava/lang/Class;

    .line 837
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 846
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getStyle()Lcn/xutils/commons/builder/ToStringStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcn/xutils/commons/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    invoke-direct {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->validate()V

    .line 852
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 853
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    .line 854
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->getUpToClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 855
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 856
    invoke-virtual {p0, v0}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->appendFieldsIn(Ljava/lang/Class;)V

    goto :goto_0

    .line 858
    :cond_1
    invoke-super {p0}, Lcn/xutils/commons/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
