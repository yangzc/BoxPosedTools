.class public Lcn/xutils/commons/reflect/ConstructorUtils;
.super Ljava/lang/Object;
.source "ConstructorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static varargs getAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 197
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 217
    .local p0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    const-string v0, "ctor"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    nop

    .line 218
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/ConstructorUtils;->isAccessible(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 218
    :goto_0
    return-object v0
.end method

.method public static varargs getMatchingAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    .line 242
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 247
    :catch_0
    move-exception v0

    .line 250
    const/4 v0, 0x0

    .line 255
    .local v0, "result":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 258
    .local v1, "ctors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 260
    .local v4, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-static {v4, p1}, Lcn/xutils/commons/reflect/MemberUtils;->isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    invoke-static {v4}, Lcn/xutils/commons/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 263
    if-eqz v4, :cond_1

    .line 264
    invoke-static {v4}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 265
    if-eqz v0, :cond_0

    invoke-static {v4, v0, p1}, Lcn/xutils/commons/reflect/MemberUtils;->compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I

    move-result v5

    if-gez v5, :cond_1

    .line 268
    :cond_0
    move-object v5, v4

    .line 269
    .local v5, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    move-object v0, v5

    .line 258
    .end local v4    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_2
    return-object v0
.end method

.method public static varargs invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 81
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 82
    invoke-static {p1}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/ConstructorUtils;->invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 108
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 109
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p2

    .line 110
    invoke-static {p0, p2}, Lcn/xutils/commons/reflect/ConstructorUtils;->getMatchingAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 111
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 117
    .local v1, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, v1}, Lcn/xutils/commons/reflect/MethodUtils;->getVarArgs([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    .line 119
    .end local v1    # "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 112
    :cond_1
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible constructor on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 113
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static varargs invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 144
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcn/xutils/commons/ClassUtils;->toClass([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/ConstructorUtils;->invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static invokeExactConstructor(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 171
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 172
    invoke-static {p2}, Lcn/xutils/commons/ArrayUtils;->nullToEmpty([Ljava/lang/Class;)[Ljava/lang/Class;

    move-result-object p2

    .line 173
    invoke-static {p0, p2}, Lcn/xutils/commons/reflect/ConstructorUtils;->getAccessibleConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 174
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<TT;>;"
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such accessible constructor on object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isAccessible(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 285
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 286
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 287
    invoke-static {v0}, Lcn/xutils/commons/ClassUtils;->isPublic(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const/4 v1, 0x0

    return v1

    .line 290
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 292
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
