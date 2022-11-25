.class public Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;
.super Ljava/lang/Object;
.source "KeyGenParameterSpecCompat.java"


# static fields
.field private static available:Z

.field private static buildConst:Ljava/lang/reflect/Constructor;

.field private static builder:Ljava/lang/Class;

.field private static builderBuild:Ljava/lang/reflect/Method;

.field private static setBlockModes:Ljava/lang/reflect/Method;

.field private static setEncPad:Ljava/lang/reflect/Method;

.field private static setUserAuthReq:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.security.keystore.KeyGenParameterSpec$Builder"

    .line 39
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builder:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    .line 40
    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->buildConst:Ljava/lang/reflect/Constructor;

    .line 41
    sget-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builder:Ljava/lang/Class;

    const-string v2, "build"

    const/4 v3, 0x0

    move-object v5, v3

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builderBuild:Ljava/lang/reflect/Method;

    .line 42
    sget-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builder:Ljava/lang/Class;

    const-string v2, "setBlockModes"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setBlockModes:Ljava/lang/reflect/Method;

    .line 43
    sget-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builder:Ljava/lang/Class;

    const-string v2, "setUserAuthenticationRequired"

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setUserAuthReq:Ljava/lang/reflect/Method;

    .line 44
    sget-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builder:Ljava/lang/Class;

    const-string v2, "setEncryptionPaddings"

    new-array v3, v4, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setEncPad:Ljava/lang/reflect/Method;

    .line 47
    sput-boolean v4, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->available:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    sput-boolean v0, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->available:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 5

    .line 56
    sget-boolean v0, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->available:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 61
    :cond_0
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->buildConst:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 62
    sget-object v0, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setBlockModes:Ljava/lang/reflect/Method;

    new-array v2, p1, [Ljava/lang/Object;

    new-array v4, p1, [Ljava/lang/String;

    aput-object p2, v4, v3

    aput-object v4, v2, v3

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 63
    sget-object p2, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setUserAuthReq:Ljava/lang/reflect/Method;

    new-array v0, p1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, v0, v3

    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 64
    sget-object p2, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->setEncPad:Ljava/lang/reflect/Method;

    new-array p3, p1, [Ljava/lang/Object;

    new-array p1, p1, [Ljava/lang/String;

    aput-object p4, p1, v3

    aput-object p1, p3, v3

    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 66
    sget-object p1, Lcom/keepassdroid/compat/KeyGenParameterSpecCompat;->builderBuild:Ljava/lang/reflect/Method;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1
.end method
