.class public Lcn/xutils/commons/builder/ReflectionDiffBuilder;
.super Ljava/lang/Object;
.source "ReflectionDiffBuilder.java"

# interfaces
.implements Lcn/xutils/commons/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcn/xutils/commons/builder/Builder<",
        "Lcn/xutils/commons/builder/DiffResult<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final diffBuilder:Lcn/xutils/commons/builder/DiffBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/xutils/commons/builder/DiffBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private excludeFieldNames:[Ljava/lang/String;

.field private final left:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final right:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V
    .locals 1
    .param p3, "style"    # Lcn/xutils/commons/builder/ToStringStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Lcn/xutils/commons/builder/ToStringStyle;",
            ")V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    .local p1, "lhs":Ljava/lang/Object;, "TT;"
    .local p2, "rhs":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    .line 107
    iput-object p2, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcn/xutils/commons/builder/DiffBuilder;

    invoke-direct {v0, p1, p2, p3}, Lcn/xutils/commons/builder/DiffBuilder;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcn/xutils/commons/builder/ToStringStyle;)V

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->diffBuilder:Lcn/xutils/commons/builder/DiffBuilder;

    .line 109
    return-void
.end method

.method private accept(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 165
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 166
    return v2

    .line 168
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    return v2

    .line 171
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    return v2

    .line 174
    :cond_2
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 175
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 177
    return v2

    .line 179
    :cond_3
    const-class v0, Lcn/xutils/commons/builder/DiffExclude;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private appendFields(Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcn/xutils/commons/reflect/FieldUtils;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 152
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v3}, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->accept(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    :try_start_0
    iget-object v4, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->diffBuilder:Lcn/xutils/commons/builder/DiffBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    iget-object v8, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    invoke-static {v3, v8, v7}, Lcn/xutils/commons/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcn/xutils/commons/builder/DiffBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcn/xutils/commons/builder/DiffBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_1

    .line 155
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected IllegalAccessException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 151
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcn/xutils/commons/builder/DiffResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/xutils/commons/builder/DiffResult<",
            "TT;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    iget-object v1, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->right:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->diffBuilder:Lcn/xutils/commons/builder/DiffBuilder;

    invoke-virtual {v0}, Lcn/xutils/commons/builder/DiffBuilder;->build()Lcn/xutils/commons/builder/DiffResult;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->left:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->appendFields(Ljava/lang/Class;)V

    .line 147
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->diffBuilder:Lcn/xutils/commons/builder/DiffBuilder;

    invoke-virtual {v0}, Lcn/xutils/commons/builder/DiffBuilder;->build()Lcn/xutils/commons/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 74
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    invoke-virtual {p0}, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->build()Lcn/xutils/commons/builder/DiffResult;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeFieldNames()[Ljava/lang/String;
    .locals 1

    .line 118
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    iget-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public varargs setExcludeFieldNames([Ljava/lang/String;)Lcn/xutils/commons/builder/ReflectionDiffBuilder;
    .locals 1
    .param p1, "excludeFieldNamesParam"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcn/xutils/commons/builder/ReflectionDiffBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lcn/xutils/commons/builder/ReflectionDiffBuilder;, "Lcn/xutils/commons/builder/ReflectionDiffBuilder<TT;>;"
    if-nez p1, :cond_0

    .line 132
    sget-object v0, Lcn/xutils/commons/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p1}, Lcn/xutils/commons/builder/ReflectionToStringBuilder;->toNoNullStringArray([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/xutils/commons/ArraySorter;->sort([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn/xutils/commons/builder/ReflectionDiffBuilder;->excludeFieldNames:[Ljava/lang/String;

    .line 137
    :goto_0
    return-object p0
.end method
