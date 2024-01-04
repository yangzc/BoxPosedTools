.class final Lcn/xutils/commons/reflect/MemberUtils$Executable;
.super Ljava/lang/Object;
.source "MemberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/xutils/commons/reflect/MemberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Executable"
.end annotation


# instance fields
.field private final isVarArgs:Z

.field private final parameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smof(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .locals 0

    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smof(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .locals 0

    invoke-static {p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;->of(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)V"
        }
    .end annotation

    .line 324
    .local p1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    .line 326
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->isVarArgs:Z

    .line 327
    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    .line 321
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v0

    iput-boolean v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->isVarArgs:Z

    .line 322
    return-void
.end method

.method private static of(Ljava/lang/reflect/Constructor;)Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lcn/xutils/commons/reflect/MemberUtils$Executable;"
        }
    .end annotation

    .line 316
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    new-instance v0, Lcn/xutils/commons/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method private static of(Ljava/lang/reflect/Method;)Lcn/xutils/commons/reflect/MemberUtils$Executable;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .line 312
    new-instance v0, Lcn/xutils/commons/reflect/MemberUtils$Executable;

    invoke-direct {v0, p0}, Lcn/xutils/commons/reflect/MemberUtils$Executable;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public getParameterTypes()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->parameterTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method public isVarArgs()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcn/xutils/commons/reflect/MemberUtils$Executable;->isVarArgs:Z

    return v0
.end method
