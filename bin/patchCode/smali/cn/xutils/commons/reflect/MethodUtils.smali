.class public Lcn/xutils/commons/reflect/MethodUtils;
.super Ljava/lang/Object;
.source "MethodUtils.java"


# static fields
.field private static final METHOD_BY_SIGNATURE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$30kHPINMYB85KkiNq0knpTgC3CE([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f4V08ybZbKWgnlJBV31Le5OJCvE(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$shF8saQsWFDsy9IE4443JR1Bxpk(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vi-D6JA565cZpwvDOJNlIgTc0uw(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcn/xutils/commons/reflect/MethodUtils;->METHOD_BY_SIGNATURE:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method private static distance([Ljava/lang/Class;[Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 780
    .local p0, "fromClassArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p1, "toClassArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 782
    .local v0, "answer":I
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 783
    const/4 v1, -0x1

    return v1

    .line 785
    :cond_0
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_4

    .line 787
    aget-object v3, p0, v2

    .line 788
    .local v3, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v4, p1, v2

    .line 789
    .local v4, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 790
    goto :goto_1

    .line 792
    :cond_1
    invoke-static {v3, v4, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 793
    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcn/xutils/commons/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_2

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 796
    :cond_2
    add-int/lit8 v0, v0, 0x2

    .line 785
    .end local v3    # "aClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 800
    .end local v2    # "offset":I
    :cond_4
    return v0
.end method

.method public static varargs getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 532
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 547
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const/4 v0, 0x0

    return-object v0

    .line 551
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 552
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPublic(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    return-object p0

    .line 555
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, "methodName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 559
    .local v2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0, v1, v2}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 563
    if-nez p0, :cond_2

    .line 564
    invoke-static {v0, v1, v2}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 567
    :cond_2
    return-object p0
.end method

.method private static varargs getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 614
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    nop

    :goto_0
    if-eqz p0, :cond_3

    .line 617
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 618
    .local v0, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 620
    .local v3, "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcn/xutils/commons/ClassUtils;->isPublic(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 621
    goto :goto_2

    .line 625
    :cond_0
    :try_start_0
    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 627
    :catch_0
    move-exception v4

    .line 634
    invoke-static {v3, p1, p2}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethodFromInterfaceNest(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 636
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_1

    .line 637
    return-object v4

    .line 618
    .end local v3    # "anInterface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    .end local v0    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 641
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private static varargs getAccessibleMethodFromSuperclass(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 582
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 583
    .local v0, "parentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 584
    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPublic(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 587
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    return-object v1

    .line 591
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 593
    :cond_1
    return-object v1
.end method

.method private static getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 988
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 989
    const/4 v0, 0x0

    return-object v0

    .line 992
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v0, "allSuperClassesAndInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-static {p0}, Lcn/xutils/commons/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 994
    .local v1, "allSuperclasses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v2, 0x0

    .line 995
    .local v2, "superClassIndex":I
    invoke-static {p0}, Lcn/xutils/commons/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 996
    .local v3, "allInterfaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    const/4 v4, 0x0

    .line 997
    .local v4, "interfaceIndex":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 998
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    goto :goto_1

    .line 1009
    :cond_1
    return-object v0

    .line 1000
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v4, v5, :cond_3

    .line 1001
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "superClassIndex":I
    .local v5, "superClassIndex":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .local v2, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 1002
    .end local v5    # "superClassIndex":I
    .local v2, "superClassIndex":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    if-lt v2, v4, :cond_4

    goto :goto_2

    .line 1005
    :cond_4
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "superClassIndex":I
    .restart local v5    # "superClassIndex":I
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .local v2, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3

    .line 1003
    .end local v5    # "superClassIndex":I
    .local v2, "superClassIndex":I
    :cond_5
    :goto_2
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "interfaceIndex":I
    .local v5, "interfaceIndex":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move v6, v5

    move v5, v2

    move-object v2, v4

    move v4, v6

    .line 1007
    .local v2, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "interfaceIndex":I
    .local v5, "superClassIndex":I
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    .end local v2    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move v2, v5

    goto :goto_0
.end method

.method public static getAnnotation(Ljava/lang/reflect/Method;Ljava/lang/Class;ZZ)Ljava/lang/annotation/Annotation;
    .locals 7
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TA;>;ZZ)TA;"
        }
    .end annotation

    .line 951
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const-string v0, "method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 952
    const-string v0, "annotationCls"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 953
    if-nez p3, :cond_0

    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 954
    const/4 v0, 0x0

    return-object v0

    .line 957
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 959
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TA;"
    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 960
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 961
    .local v1, "mcls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcn/xutils/commons/reflect/MethodUtils;->getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 962
    .local v2, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 963
    .local v4, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_1

    .line 964
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_1
    nop

    .line 965
    .local v5, "equivalentMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_2

    .line 966
    invoke-virtual {v5, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 967
    if-eqz v0, :cond_2

    .line 968
    goto :goto_2

    .line 971
    .end local v4    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "equivalentMethod":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_0

    .line 974
    .end local v1    # "mcls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static varargs getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 11
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 669
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 670
    :catch_0
    move-exception v0

    .line 674
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 675
    .local v0, "methods":[Ljava/lang/reflect/Method;
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1, p2}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 676
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 679
    .local v1, "matchingMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    sget-object v2, Lcn/xutils/commons/reflect/MethodUtils;->METHOD_BY_SIGNATURE:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, "bestMatch":Ljava/lang/reflect/Method;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 684
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 685
    .local v5, "accessibleMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    if-eqz v2, :cond_0

    invoke-static {v5, v2, p2}, Lcn/xutils/commons/reflect/MemberUtils;->compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I

    move-result v6

    if-gez v6, :cond_1

    .line 686
    :cond_0
    move-object v2, v5

    .line 688
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "accessibleMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 689
    :cond_2
    if-eqz v2, :cond_3

    .line 690
    invoke-static {v2}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 693
    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_6

    array-length v3, p2

    if-lez v3, :cond_6

    .line 694
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 695
    .local v3, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 696
    .local v4, "methodParameterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcn/xutils/commons/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 698
    .local v5, "methodParameterComponentTypeName":Ljava/lang/String;
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    aget-object v6, p2, v6

    .line 699
    .local v6, "lastParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    if-nez v6, :cond_4

    move-object v8, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 700
    .local v8, "parameterTypeName":Ljava/lang/String;
    :goto_1
    if-nez v6, :cond_5

    move-object v9, v7

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, "parameterTypeSuperClassName":Ljava/lang/String;
    :goto_2
    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 703
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 704
    return-object v7

    .line 708
    .end local v3    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "methodParameterComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "methodParameterComponentTypeName":Ljava/lang/String;
    .end local v6    # "lastParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "parameterTypeName":Ljava/lang/String;
    .end local v9    # "parameterTypeSuperClassName":Ljava/lang/String;
    :cond_6
    return-object v2
.end method

.method public static varargs getMatchingMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 10
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 725
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 726
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "methodName"

    invoke-static {p1, v2, v1}, Lcn/xutils/commons/Validate;->notEmpty(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 728
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda9;

    invoke-direct {v2, p1}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 730
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 732
    .local v1, "methods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-static {p0}, Lcn/xutils/commons/ClassUtils;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda10;-><init>()V

    .line 733
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda11;-><init>()V

    .line 734
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 736
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda5;

    invoke-direct {v3, v1}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 738
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 739
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, p2}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 740
    return-object v3

    .line 742
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    goto :goto_0

    .line 744
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 746
    .local v2, "candidates":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/reflect/Method;>;>;"
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda1;

    invoke-direct {v4, p2}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Class;)V

    .line 747
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda2;

    invoke-direct {v4, p2, v2}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda2;-><init>([Ljava/lang/Class;Ljava/util/TreeMap;)V

    .line 748
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 754
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 755
    const/4 v0, 0x0

    return-object v0

    .line 758
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 759
    .local v3, "bestCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 760
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    .line 759
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 764
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 766
    invoke-static {p2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda3;

    invoke-direct {v6}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    const-string v6, "("

    const-string v7, ")"

    const-string v8, ","

    invoke-static {v8, v6, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 767
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 768
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v6

    const-string v7, "["

    const-string v9, "]"

    invoke-static {v8, v7, v9}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 765
    const-string v5, "Found multiple candidates for method %s on class %s : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 761
    :cond_4
    :goto_1
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 874
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcn/xutils/commons/reflect/MethodUtils;->getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;
    .locals 3
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;ZZ)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 914
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 915
    const-string v0, "annotationCls"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 916
    if-eqz p2, :cond_0

    invoke-static {p0}, Lcn/xutils/commons/reflect/MethodUtils;->getAllSuperclassesAndInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    :goto_0
    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 918
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 919
    .local v1, "annotatedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, p3, p1, v1}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda0;-><init>(ZLjava/lang/Class;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 923
    return-object v1
.end method

.method public static getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 859
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcn/xutils/commons/reflect/MethodUtils;->getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getMethodsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)[Ljava/lang/reflect/Method;
    .locals 2
    .param p2, "searchSupers"    # Z
    .param p3, "ignoreAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;ZZ)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 893
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1, p2, p3}, Lcn/xutils/commons/reflect/MethodUtils;->getMethodsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;ZZ)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_METHOD_ARRAY:[Ljava/lang/reflect/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static getOverrideHierarchy(Ljava/lang/reflect/Method;Lcn/xutils/commons/ClassUtils$Interfaces;)Ljava/util/Set;
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "interfacesBehavior"    # Lcn/xutils/commons/ClassUtils$Interfaces;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Lcn/xutils/commons/ClassUtils$Interfaces;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 812
    const-string v0, "method"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 813
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 814
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/reflect/Method;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 816
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 818
    .local v1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 820
    .local v2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2, p1}, Lcn/xutils/commons/ClassUtils;->hierarchy(Ljava/lang/Class;Lcn/xutils/commons/ClassUtils$Interfaces;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 822
    .local v3, "hierarchy":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Class<*>;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 823
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 824
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 825
    .local v4, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 826
    .local v5, "m":Ljava/lang/reflect/Method;
    if-nez v5, :cond_0

    .line 827
    goto :goto_0

    .line 829
    :cond_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 831
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 832
    goto :goto_0

    .line 835
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v2, v6}, Lcn/xutils/commons/reflect/TypeUtils;->getTypeArguments(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v6

    .line 836
    .local v6, "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v1

    if-ge v7, v8, :cond_3

    .line 837
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-static {v6, v8}, Lcn/xutils/commons/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 838
    .local v8, "childType":Ljava/lang/reflect/Type;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v9

    aget-object v9, v9, v7

    invoke-static {v6, v9}, Lcn/xutils/commons/reflect/TypeUtils;->unrollVariables(Ljava/util/Map;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 839
    .local v9, "parentType":Ljava/lang/reflect/Type;
    invoke-static {v8, v9}, Lcn/xutils/commons/reflect/TypeUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 840
    goto :goto_0

    .line 836
    .end local v8    # "childType":Ljava/lang/reflect/Type;
    .end local v9    # "parentType":Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 843
    .end local v7    # "i":I
    :cond_3
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 844
    .end local v4    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "typeArguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/TypeVariable<*>;Ljava/lang/reflect/Type;>;"
    goto :goto_0

    .line 845
    :cond_4
    return-object v0
.end method

.method static getVarArgs([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .param p0, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 460
    .local p1, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    .line 461
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    return-object p0

    .line 467
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 470
    .local v0, "newArgs":[Ljava/lang/Object;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 474
    .local v1, "varArgComponentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v3, p0

    array-length v4, p1

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    .line 476
    .local v3, "varArgLength":I
    invoke-static {v1}, Lcn/xutils/commons/ClassUtils;->primitiveToWrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 478
    .local v4, "varArgsArray":Ljava/lang/Object;
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    invoke-static {p0, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 482
    invoke-static {v4}, Lcn/xutils/commons/ArrayUtils;->toPrimitive(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 486
    :cond_2
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput-object v4, v0, v2

    .line 489
    return-object v0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 280
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 304
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 305
    invoke-static {p2}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/MethodUtils;->invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 330
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "object"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 331
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 332
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 334
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 335
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 338
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 336
    :cond_0
    new-instance v2, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such accessible method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "() on object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static varargs invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 513
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 514
    invoke-static {p2}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/MethodUtils;->invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 364
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 365
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 366
    invoke-static {p0, p1, p3}, Lcn/xutils/commons/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 367
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 368
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 369
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 98
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/xutils/commons/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 150
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 151
    invoke-static {p2}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 256
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcn/xutils/commons/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcn/xutils/commons/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 180
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 181
    invoke-static {p3}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcn/xutils/commons/reflect/MethodUtils;->invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeMethod(Ljava/lang/Object;ZLjava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "forceAccess"    # Z
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 206
    .local p4, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "object"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    invoke-static {p4}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p4

    .line 208
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 213
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 214
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 215
    const-string v1, "No such method: "

    .line 216
    .local v1, "messagePrefix":Ljava/lang/String;
    invoke-static {v0, p2, p4}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 217
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_1

    .line 218
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    goto :goto_0

    .line 221
    .end local v1    # "messagePrefix":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const-string v1, "No such accessible method: "

    .line 222
    .restart local v1    # "messagePrefix":Ljava/lang/String;
    invoke-static {v0, p2, p4}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 225
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 228
    invoke-static {v2, p3}, Lcn/xutils/commons/reflect/MethodUtils;->toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .line 230
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 226
    :cond_2
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "() on object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static varargs invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 401
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 402
    invoke-static {p2}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/MethodUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 430
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 431
    invoke-static {p3}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p3

    .line 432
    invoke-static {p0, p1, p3}, Lcn/xutils/commons/reflect/MethodUtils;->getMatchingAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 434
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 438
    invoke-static {v0, p2}, Lcn/xutils/commons/reflect/MethodUtils;->toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 435
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible method: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() on class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 436
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$getMatchingAccessibleMethod$0(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "parameterTypes"    # [Ljava/lang/Class;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 676
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2, p1}, Lcn/xutils/commons/reflect/MemberUtils;->isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getMatchingMethod$1(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 729
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMatchingMethod$2(Ljava/lang/String;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 735
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMatchingMethod$3([Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 2
    .param p0, "parameterTypes"    # [Ljava/lang/Class;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 747
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMatchingMethod$4(Ljava/lang/Integer;)Ljava/util/List;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getMatchingMethod$5([Ljava/lang/Class;Ljava/util/TreeMap;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p0, "parameterTypes"    # [Ljava/lang/Class;
    .param p1, "candidates"    # Ljava/util/TreeMap;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .line 749
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/xutils/commons/reflect/MethodUtils;->distance([Ljava/lang/Class;[Ljava/lang/Class;)I

    move-result v0

    .line 750
    .local v0, "distance":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 751
    .local v1, "candidatesAtDistance":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    return-void
.end method

.method static synthetic lambda$getMethodsListWithAnnotation$6(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p0, "annotationCls"    # Ljava/lang/Class;
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 921
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getMethodsListWithAnnotation$7(ZLjava/lang/Class;Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .param p0, "ignoreAccess"    # Z
    .param p1, "annotationCls"    # Ljava/lang/Class;
    .param p2, "annotatedMethods"    # Ljava/util/List;
    .param p3, "acls"    # Ljava/lang/Class;

    .line 920
    if-eqz p0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 921
    .local v0, "methods":[Ljava/lang/reflect/Method;
    :goto_0
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Class;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda5;

    invoke-direct {v2, p2}, Lcn/xutils/commons/reflect/MethodUtils$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    .line 922
    return-void
.end method

.method private static toVarArgs(Ljava/lang/reflect/Method;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 443
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 445
    .local v0, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, v0}, Lcn/xutils/commons/reflect/MethodUtils;->getVarArgs([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 447
    .end local v0    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-object p1
.end method
