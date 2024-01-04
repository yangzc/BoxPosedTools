.class public Lcn/xutils/commons/AnnotationUtils;
.super Ljava/lang/Object;
.source "AnnotationUtils.java"


# static fields
.field private static final TO_STRING_STYLE:Lcn/xutils/commons/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcn/xutils/commons/AnnotationUtils$1;

    invoke-direct {v0}, Lcn/xutils/commons/AnnotationUtils$1;-><init>()V

    sput-object v0, Lcn/xutils/commons/AnnotationUtils;->TO_STRING_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z
    .locals 4
    .param p0, "a1"    # [Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # [Ljava/lang/annotation/Annotation;

    .line 310
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 311
    return v2

    .line 313
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 314
    aget-object v1, p0, v0

    aget-object v3, p1, v0

    invoke-static {v1, v3}, Lcn/xutils/commons/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 315
    return v2

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 272
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    move-object v0, p1

    check-cast v0, [Ljava/lang/annotation/Annotation;

    move-object v1, p2

    check-cast v1, [Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lcn/xutils/commons/AnnotationUtils;->annotationArrayMemberEquals([Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 275
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    move-object v0, p1

    check-cast v0, [B

    move-object v1, p2

    check-cast v1, [B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0

    .line 278
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    move-object v0, p1

    check-cast v0, [S

    move-object v1, p2

    check-cast v1, [S

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v0

    return v0

    .line 281
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 282
    move-object v0, p1

    check-cast v0, [I

    move-object v1, p2

    check-cast v1, [I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0

    .line 284
    :cond_3
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 285
    move-object v0, p1

    check-cast v0, [C

    move-object v1, p2

    check-cast v1, [C

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    return v0

    .line 287
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 288
    move-object v0, p1

    check-cast v0, [J

    move-object v1, p2

    check-cast v1, [J

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    return v0

    .line 290
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    move-object v0, p1

    check-cast v0, [F

    move-object v1, p2

    check-cast v1, [F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 293
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 294
    move-object v0, p1

    check-cast v0, [D

    move-object v1, p2

    check-cast v1, [D

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    return v0

    .line 296
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 297
    move-object v0, p1

    check-cast v0, [Z

    move-object v1, p2

    check-cast v1, [Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    return v0

    .line 299
    :cond_8
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v1, p2

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 329
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0

    .line 332
    :cond_0
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    move-object v0, p1

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([S)I

    move-result v0

    return v0

    .line 335
    :cond_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 336
    move-object v0, p1

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0

    .line 338
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    move-object v0, p1

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([C)I

    move-result v0

    return v0

    .line 341
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    move-object v0, p1

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    .line 344
    :cond_4
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 345
    move-object v0, p1

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    return v0

    .line 347
    :cond_5
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 348
    move-object v0, p1

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0

    .line 350
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 351
    move-object v0, p1

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    return v0

    .line 353
    :cond_7
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z
    .locals 11
    .param p0, "a1"    # Ljava/lang/annotation/Annotation;
    .param p1, "a2"    # Ljava/lang/annotation/Annotation;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 115
    return v0

    .line 117
    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    .line 121
    .local v2, "type1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    .line 122
    .local v3, "type2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Annotation %s with null annotationType()"

    invoke-static {v2, v5, v4}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v5, v4}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 125
    return v1

    .line 128
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 129
    .local v7, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_3

    .line 130
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v8}, Lcn/xutils/commons/AnnotationUtils;->isValidAnnotationMemberType(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 131
    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 132
    .local v8, "v1":Ljava/lang/Object;
    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v7, p1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 133
    .local v9, "v2":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10, v8, v9}, Lcn/xutils/commons/AnnotationUtils;->memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_3

    .line 134
    return v1

    .line 128
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "v1":Ljava/lang/Object;
    .end local v9    # "v2":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    :cond_4
    nop

    .line 141
    return v0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    return v1

    .line 118
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    .end local v2    # "type1":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v3    # "type2":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    :cond_5
    :goto_1
    return v1
.end method

.method public static hashCode(Ljava/lang/annotation/Annotation;)I
    .locals 9
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "result":I
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    .line 159
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 161
    .local v6, "m":Ljava/lang/reflect/Method;
    :try_start_0
    new-array v7, v4, [Ljava/lang/Object;

    invoke-virtual {v6, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 162
    .local v7, "value":Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 165
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcn/xutils/commons/AnnotationUtils;->hashMember(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v0, v8

    .line 168
    .end local v7    # "value":Ljava/lang/Object;
    nop

    .line 159
    .end local v6    # "m":Ljava/lang/reflect/Method;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    .restart local v6    # "m":Ljava/lang/reflect/Method;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Annotation method %s returned null"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":I
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .end local p0    # "a":Ljava/lang/annotation/Annotation;
    throw v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .end local v7    # "value":Ljava/lang/Object;
    .restart local v0    # "result":I
    .restart local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .restart local v6    # "m":Ljava/lang/reflect/Method;
    .restart local p0    # "a":Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v2

    .line 167
    .local v2, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Lcn/xutils/commons/exception/UncheckedException;

    invoke-direct {v3, v2}, Lcn/xutils/commons/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 170
    .end local v2    # "ex":Ljava/lang/ReflectiveOperationException;
    .end local v6    # "m":Ljava/lang/reflect/Method;
    :cond_1
    return v0
.end method

.method private static hashMember(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7f

    .line 228
    .local v0, "part1":I
    invoke-static {p1}, Lcn/xutils/commons/ObjectUtils;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, p1}, Lcn/xutils/commons/AnnotationUtils;->arrayMemberHash(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 231
    :cond_0
    instance-of v1, p1, Ljava/lang/annotation/Annotation;

    if-eqz v1, :cond_1

    .line 232
    move-object v1, p1

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lcn/xutils/commons/AnnotationUtils;->hashCode(Ljava/lang/annotation/Annotation;)I

    move-result v1

    xor-int/2addr v1, v0

    return v1

    .line 234
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v1, v0

    return v1
.end method

.method public static isValidAnnotationMemberType(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 208
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 209
    return v0

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 214
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/String;

    .line 215
    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 214
    :cond_3
    return v0
.end method

.method private static memberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 248
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p1, p2, :cond_0

    .line 249
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_0
    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcn/xutils/commons/AnnotationUtils;->arrayMemberEquals(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 257
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 258
    move-object v0, p1

    check-cast v0, Ljava/lang/annotation/Annotation;

    move-object v1, p2

    check-cast v1, Ljava/lang/annotation/Annotation;

    invoke-static {v0, v1}, Lcn/xutils/commons/AnnotationUtils;->equals(Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    return v0

    .line 260
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 252
    :cond_4
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static toString(Ljava/lang/annotation/Annotation;)Ljava/lang/String;
    .locals 8
    .param p0, "a"    # Ljava/lang/annotation/Annotation;

    .line 182
    new-instance v0, Lcn/xutils/commons/builder/ToStringBuilder;

    sget-object v1, Lcn/xutils/commons/AnnotationUtils;->TO_STRING_STYLE:Lcn/xutils/commons/builder/ToStringStyle;

    invoke-direct {v0, p0, v1}, Lcn/xutils/commons/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V

    .line 183
    .local v0, "builder":Lcn/xutils/commons/builder/ToStringBuilder;
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 184
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_0

    .line 185
    goto :goto_1

    .line 188
    :cond_0
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcn/xutils/commons/builder/ToStringBuilder;->append(Ljava/lang/String;Ljava/lang/Object;)Lcn/xutils/commons/builder/ToStringBuilder;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 183
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    .restart local v5    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "ex":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Lcn/xutils/commons/exception/UncheckedException;

    invoke-direct {v2, v1}, Lcn/xutils/commons/exception/UncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 193
    .end local v1    # "ex":Ljava/lang/ReflectiveOperationException;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v0}, Lcn/xutils/commons/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
