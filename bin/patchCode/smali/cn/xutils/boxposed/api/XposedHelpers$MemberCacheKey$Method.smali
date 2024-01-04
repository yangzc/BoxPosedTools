.class final Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;
.super Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Method"
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final isExact:Z

.field private final name:Ljava/lang/String;

.field private final parameters:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparameters(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;)[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->parameters:[Ljava/lang/Class;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)V
    .locals 2
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "isExact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 156
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "parameters":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {p1, p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {p3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;-><init>(I)V

    .line 157
    iput-object p1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->clazz:Ljava/lang/Class;

    .line 158
    iput-object p2, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->name:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->parameters:[Ljava/lang/Class;

    .line 160
    iput-boolean p4, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->isExact:Z

    .line 161
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 166
    :cond_0
    instance-of v1, p1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 167
    :cond_1
    move-object v1, p1

    check-cast v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;

    .line 168
    .local v1, "method":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;
    iget-boolean v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->isExact:Z

    iget-boolean v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->isExact:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->clazz:Ljava/lang/Class;

    iget-object v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->clazz:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->name:Ljava/lang/String;

    iget-object v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->parameters:[Ljava/lang/Class;

    iget-object v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->parameters:[Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->parameters:[Ljava/lang/Class;

    invoke-static {v1}, Lcn/xutils/boxposed/api/XposedHelpers;->-$$Nest$smgetParametersString([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "str":Ljava/lang/String;
    iget-boolean v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Method;->isExact:Z

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#exact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 178
    :cond_0
    return-object v0
.end method
