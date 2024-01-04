.class final Lcn/xutils/commons/reflect/MemberUtils;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/xutils/commons/reflect/MemberUtils$Executable;
    }
.end annotation


# static fields
.field private static final ACCESS_TEST:I = 0x7

.field private static final ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lcn/xutils/commons/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareConstructorFit(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 121
    .local p0, "left":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "right":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcn/xutils/commons/reflect/MemberUtils;->compareParameterTypes(Lcn/xutils/commons/reflect/MemberUtils$Executable;Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method static compareMethodFit(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;[Ljava/lang/Class;)I
    .locals 2
    .param p0, "left"    # Ljava/lang/reflect/Method;
    .param p1, "right"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 138
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {p1}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcn/xutils/commons/reflect/MemberUtils;->compareParameterTypes(Lcn/xutils/commons/reflect/MemberUtils$Executable;Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I

    move-result v0

    return v0
.end method

.method private static compareParameterTypes(Lcn/xutils/commons/reflect/MemberUtils$Executable;Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)I
    .locals 3
    .param p0, "left"    # Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .param p1, "right"    # Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/reflect/MemberUtils$Executable;",
            "Lcn/xutils/commons/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 154
    .local p2, "actual":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p2, p0}, Lcn/xutils/commons/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lcn/xutils/commons/reflect/MemberUtils$Executable;)F

    move-result v0

    .line 155
    .local v0, "leftCost":F
    invoke-static {p2, p1}, Lcn/xutils/commons/reflect/MemberUtils;->getTotalTransformationCost([Ljava/lang/Class;Lcn/xutils/commons/reflect/MemberUtils$Executable;)F

    move-result v1

    .line 156
    .local v1, "rightCost":F
    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    return v2
.end method

.method private static getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 214
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0, p1}, Lcn/xutils/commons/reflect/MemberUtils;->getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v0

    return v0

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "cost":F
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcn/xutils/commons/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 226
    goto :goto_1

    .line 228
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 235
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 236
    const/high16 v1, 0x3fc00000    # 1.5f

    add-float/2addr v0, v1

    .line 238
    :cond_3
    return v0
.end method

.method private static getPrimitivePromotionCost(Ljava/lang/Class;Ljava/lang/Class;)F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)F"
        }
    .end annotation

    .line 249
    .local p0, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 250
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    .line 253
    .local v0, "cost":F
    move-object v1, p0

    .line 254
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    const v3, 0x3dcccccd    # 0.1f

    if-nez v2, :cond_1

    .line 256
    add-float/2addr v0, v3

    .line 257
    invoke-static {v1}, Lcn/xutils/commons/ClassUtils;->wrapperToPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 259
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eq v1, p1, :cond_3

    sget-object v4, Lcn/xutils/commons/reflect/MemberUtils;->ORDERED_PRIMITIVE_TYPES:[Ljava/lang/Class;

    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 260
    aget-object v5, v4, v2

    if-ne v1, v5, :cond_2

    .line 261
    add-float/2addr v0, v3

    .line 262
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 263
    add-int/lit8 v5, v2, 0x1

    aget-object v1, v4, v5

    .line 259
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method private static getTotalTransformationCost([Ljava/lang/Class;Lcn/xutils/commons/reflect/MemberUtils$Executable;)F
    .locals 13
    .param p1, "executable"    # Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;",
            "Lcn/xutils/commons/reflect/MemberUtils$Executable;",
            ")F"
        }
    .end annotation

    .line 167
    .local p0, "srcArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "destArgs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v1

    .line 171
    .local v1, "isVarArgs":Z
    const/4 v2, 0x0

    .line 172
    .local v2, "totalCost":F
    const/4 v3, 0x1

    array-length v4, v0

    if-eqz v1, :cond_0

    sub-int/2addr v4, v3

    :cond_0
    int-to-long v4, v4

    .line 173
    .local v4, "normalArgsLen":J
    array-length v6, p0

    int-to-long v6, v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_1

    .line 174
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    return v3

    .line 176
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    int-to-long v7, v6

    cmp-long v7, v7, v4

    if-gez v7, :cond_2

    .line 177
    aget-object v7, p0, v6

    aget-object v8, v0, v6

    invoke-static {v7, v8}, Lcn/xutils/commons/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v7

    add-float/2addr v2, v7

    .line 176
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    .end local v6    # "i":I
    :cond_2
    if-eqz v1, :cond_7

    .line 182
    array-length v6, p0

    array-length v7, v0

    const/4 v8, 0x0

    if-ge v6, v7, :cond_3

    move v6, v3

    goto :goto_1

    :cond_3
    move v6, v8

    .line 183
    .local v6, "noVarArgsPassed":Z
    :goto_1
    array-length v7, p0

    array-length v9, v0

    if-ne v7, v9, :cond_4

    array-length v7, p0

    sub-int/2addr v7, v3

    aget-object v7, p0, v7

    if-eqz v7, :cond_4

    array-length v7, p0

    sub-int/2addr v7, v3

    aget-object v7, p0, v7

    .line 184
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    move-result v7

    if-eqz v7, :cond_4

    move v8, v3

    goto :goto_2

    :cond_4
    nop

    :goto_2
    move v7, v8

    .line 186
    .local v7, "explicitArrayForVarargs":Z
    const v8, 0x3a83126f    # 0.001f

    .line 187
    .local v8, "varArgsCost":F
    array-length v9, v0

    sub-int/2addr v9, v3

    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v9

    .line 188
    .local v9, "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const v10, 0x3a83126f    # 0.001f

    if-eqz v6, :cond_5

    .line 190
    const-class v3, Ljava/lang/Object;

    invoke-static {v9, v3}, Lcn/xutils/commons/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v3

    add-float/2addr v3, v10

    add-float/2addr v2, v3

    goto :goto_4

    .line 191
    :cond_5
    if-eqz v7, :cond_6

    .line 192
    array-length v11, p0

    sub-int/2addr v11, v3

    aget-object v3, p0, v11

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 193
    .local v3, "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, v9}, Lcn/xutils/commons/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v11

    add-float/2addr v11, v10

    add-float/2addr v2, v11

    .line 194
    .end local v3    # "sourceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_4

    .line 196
    :cond_6
    array-length v11, v0

    sub-int/2addr v11, v3

    .local v11, "i":I
    :goto_3
    array-length v3, p0

    if-ge v11, v3, :cond_7

    .line 197
    aget-object v3, p0, v11

    .line 198
    .local v3, "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3, v9}, Lcn/xutils/commons/reflect/MemberUtils;->getObjectTransformationCost(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v12

    add-float/2addr v12, v10

    add-float/2addr v2, v12

    .line 196
    .end local v3    # "srcClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 202
    .end local v6    # "noVarArgsPassed":Z
    .end local v7    # "explicitArrayForVarargs":Z
    .end local v8    # "varArgsCost":F
    .end local v9    # "destClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "i":I
    :cond_7
    :goto_4
    return v2
.end method

.method static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .line 104
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils;->isPublic(Ljava/lang/reflect/Member;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->isSynthetic()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isMatchingConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 275
    .local p0, "method":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/reflect/MemberUtils;->isMatchingExecutable(Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private static isMatchingExecutable(Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z
    .locals 6
    .param p0, "method"    # Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/xutils/commons/reflect/MemberUtils$Executable;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 279
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    return v1

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->isVarArgs()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 286
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_2

    array-length v4, p1

    if-ge v2, v4, :cond_2

    .line 287
    aget-object v4, p1, v2

    aget-object v5, v0, v2

    invoke-static {v4, v5, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    return v3

    .line 286
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_2
    array-length v4, v0

    sub-int/2addr v4, v1

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    .line 292
    .local v4, "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_4

    .line 293
    aget-object v5, p1, v2

    invoke-static {v5, v4, v1}, Lcn/xutils/commons/ClassUtils;->isAssignable(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 294
    return v3

    .line 292
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 297
    :cond_4
    return v1

    .line 300
    .end local v2    # "i":I
    .end local v4    # "varArgParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return v3
.end method

.method static isMatchingMethod(Ljava/lang/reflect/Method;[Ljava/lang/Class;)Z
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 271
    .local p1, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->-$$Nest$smof(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object v0

    invoke-static {v0, p1}, Lcn/xutils/commons/reflect/MemberUtils;->isMatchingExecutable(Lcn/xutils/commons/reflect/MemberUtils$Executable;[Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static isPackageAccess(I)Z
    .locals 1
    .param p0, "modifiers"    # I

    .line 77
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isPublic(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .line 86
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isStatic(Ljava/lang/reflect/Member;)Z
    .locals 1
    .param p0, "member"    # Ljava/lang/reflect/Member;

    .line 95
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)Ljava/lang/reflect/AccessibleObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/reflect/AccessibleObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 56
    .local p0, "obj":Ljava/lang/reflect/AccessibleObject;, "TT;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Member;

    .line 60
    .local v0, "m":Ljava/lang/reflect/Member;
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcn/xutils/commons/reflect/MemberUtils;->isPublic(Ljava/lang/reflect/Member;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Lcn/xutils/commons/reflect/MemberUtils;->isPackageAccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-object p0

    .line 64
    :catch_0
    move-exception v1

    .line 68
    :cond_1
    return-object p0

    .line 57
    .end local v0    # "m":Ljava/lang/reflect/Member;
    :cond_2
    :goto_0
    return-object p0
.end method
