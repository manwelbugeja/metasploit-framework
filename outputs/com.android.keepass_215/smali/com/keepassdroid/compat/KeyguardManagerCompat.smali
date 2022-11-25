.class public Lcom/keepassdroid/compat/KeyguardManagerCompat;
.super Ljava/lang/Object;
.source "KeyguardManagerCompat.java"


# static fields
.field private static available:Z

.field private static isKeyguardSecure:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    :try_start_0
    const-class v0, Landroid/app/KeyguardManager;

    const-string v1, "isKeyguardSecure"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/keepassdroid/compat/KeyguardManagerCompat;->isKeyguardSecure:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    .line 35
    sput-boolean v0, Lcom/keepassdroid/compat/KeyguardManagerCompat;->available:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 37
    sput-boolean v0, Lcom/keepassdroid/compat/KeyguardManagerCompat;->available:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isKeyguardSecure(Landroid/app/KeyguardManager;)Z
    .locals 3

    .line 42
    sget-boolean v0, Lcom/keepassdroid/compat/KeyguardManagerCompat;->available:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 47
    :cond_0
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/KeyguardManagerCompat;->isKeyguardSecure:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v1
.end method
