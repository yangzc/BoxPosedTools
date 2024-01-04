.class public Lcn/xutils/commons/reflect/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 205
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/xutils/commons/reflect/FieldUtils;->getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 219
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "allFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object v1, p0

    .line 222
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 224
    .local v2, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 225
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 226
    .end local v2    # "declaredFields":[Ljava/lang/reflect/Field;
    goto :goto_0

    .line 227
    :cond_0
    return-object v0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 154
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 176
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The field name must not be blank/empty"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 180
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 181
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcn/xutils/commons/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    if-nez p2, :cond_0

    .line 183
    return-object v0

    .line 185
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_1
    return-object v1

    .line 188
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 191
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 69
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 90
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v0, "cls"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    invoke-static {p1}, Lcn/xutils/commons/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "The field name must not be blank/empty"

    invoke-static {v0, v3, v2}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 107
    move-object v0, p0

    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 109
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 112
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-static {v3}, Lcn/xutils/commons/reflect/MemberUtils;->isPublic(Ljava/lang/reflect/Member;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    if-nez p2, :cond_0

    .line 114
    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    return-object v3

    .line 119
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 107
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 126
    .end local v0    # "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    .line 127
    .local v0, "match":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcn/xutils/commons/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 129
    .local v4, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 130
    .local v5, "test":Ljava/lang/reflect/Field;
    if-nez v0, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    const-string v7, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces."

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    move-object v0, v5

    .line 135
    .end local v5    # "test":Ljava/lang/reflect/Field;
    goto :goto_4

    .line 133
    :catch_1
    move-exception v5

    .line 136
    .end local v4    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    goto :goto_2

    .line 137
    :cond_4
    return-object v0
.end method

.method public static getFieldsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
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
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 257
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-string v0, "annotationCls"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 258
    invoke-static {p0}, Lcn/xutils/commons/reflect/FieldUtils;->getAllFieldsList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcn/xutils/commons/reflect/FieldUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcn/xutils/commons/reflect/FieldUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static getFieldsWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 242
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "annotationCls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-static {p0, p1}, Lcn/xutils/commons/reflect/FieldUtils;->getFieldsListWithAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcn/xutils/commons/ArrayUtils;->EMPTY_FIELD_ARRAY:[Ljava/lang/reflect/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic lambda$getFieldsListWithAnnotation$0(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "annotationCls"    # Ljava/lang/Class;
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 497
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 520
    const-string v0, "target"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 521
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 522
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 523
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Cannot locate declared field %s.%s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 525
    invoke-static {v1, p0, v2}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 362
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 385
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 386
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot locate declared field %s.%s"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/xutils/commons/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 450
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 473
    const-string v0, "target"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 474
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 475
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcn/xutils/commons/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 476
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Cannot locate field %s on %s"

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-static {v1, p0, v2}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 405
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 425
    const-string v0, "field"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 426
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 429
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 431
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 316
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 339
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcn/xutils/commons/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 340
    .local v0, "field":Ljava/lang/reflect/Field;
    const-string v1, "Cannot locate field \'%s\' on %s"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/xutils/commons/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcn/xutils/commons/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 295
    const-string v0, "field"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 296
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isStatic(Ljava/lang/reflect/Member;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The field \'%s\' is not static"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static removeFinalModifier(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 728
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcn/xutils/commons/reflect/FieldUtils;->removeFinalModifier(Ljava/lang/reflect/Field;Z)V

    .line 729
    return-void
.end method

.method public static removeFinalModifier(Ljava/lang/reflect/Field;Z)V
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "forceAccess"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 749
    const-string v0, "field"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 752
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    const-class v0, Ljava/lang/reflect/Field;

    const-string v1, "modifiers"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 755
    .local v0, "modifiersField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 756
    .local v3, "doForceAccess":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    if-eqz v3, :cond_3

    .line 763
    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    .line 762
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_2

    .line 763
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 765
    :cond_2
    nop

    .end local p0    # "field":Ljava/lang/reflect/Field;
    .end local p1    # "forceAccess":Z
    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 775
    .end local v0    # "modifiersField":Ljava/lang/reflect/Field;
    .end local v3    # "doForceAccess":Z
    .restart local p0    # "field":Ljava/lang/reflect/Field;
    .restart local p1    # "forceAccess":Z
    :cond_3
    :goto_1
    goto :goto_3

    .line 767
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_2
    sget-object v1, Lcn/xutils/commons/JavaVersion;->JAVA_12:Lcn/xutils/commons/JavaVersion;

    invoke-static {v1}, Lcn/xutils/commons/SystemUtils;->isJavaVersionAtLeast(Lcn/xutils/commons/JavaVersion;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 776
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_3
    return-void

    .line 769
    .restart local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "In java 12+ final cannot be removed."

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 848
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 849
    return-void
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 872
    const-string v0, "target"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 873
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 874
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Lcn/xutils/commons/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 875
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Cannot locate declared field %s.%s"

    invoke-static {v3, v5, v4}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 877
    invoke-static {v1, p0, p2, v2}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 878
    return-void
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 637
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 638
    return-void
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 661
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p3}, Lcn/xutils/commons/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 662
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot locate declared field %s.%s"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 665
    return-void
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 796
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 797
    return-void
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 822
    const-string v0, "target"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 824
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Lcn/xutils/commons/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 825
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4, p1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Cannot locate declared field %s.%s"

    invoke-static {v3, v5, v4}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 827
    invoke-static {v1, p0, p2, v2}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 828
    return-void
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 684
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 685
    return-void
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 709
    const-string v0, "field"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 710
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;

    .line 715
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 716
    return-void
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 589
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 590
    return-void
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 614
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p3}, Lcn/xutils/commons/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 615
    .local v0, "field":Ljava/lang/reflect/Field;
    const-string v1, "Cannot locate field %s on %s"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/xutils/commons/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcn/xutils/commons/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    .line 618
    return-void
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 543
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/xutils/commons/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    .line 544
    return-void
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 565
    const-string v0, "field"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 566
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isStatic(Ljava/lang/reflect/Member;)Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 567
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 566
    const-string v2, "The field %s.%s is not static"

    invoke-static {v0, v2, v1}, Lcn/xutils/commons/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 568
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcn/xutils/commons/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 569
    return-void
.end method
