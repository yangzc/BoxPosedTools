.class final Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;
.super Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;
.source "XposedHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Field"
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

.field private final name:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetclazz(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->clazz:Ljava/lang/Class;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->name:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 129
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey;-><init>(I)V

    .line 130
    iput-object p1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->clazz:Ljava/lang/Class;

    .line 131
    iput-object p2, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->name:Ljava/lang/String;

    .line 132
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 137
    :cond_0
    instance-of v1, p1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 138
    :cond_1
    move-object v1, p1

    check-cast v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;

    .line 139
    .local v1, "field":Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;
    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->clazz:Ljava/lang/Class;

    iget-object v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->clazz:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->name:Ljava/lang/String;

    iget-object v4, v1, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/xutils/boxposed/api/XposedHelpers$MemberCacheKey$Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
