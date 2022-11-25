.class public Lcom/keepassdroid/database/security/ProtectedString;
.super Ljava/lang/Object;
.source "ProtectedString.java"


# instance fields
.field private protect:Z

.field private string:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/keepassdroid/database/security/ProtectedString;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean p1, p0, Lcom/keepassdroid/database/security/ProtectedString;->protect:Z

    .line 46
    iput-object p2, p0, Lcom/keepassdroid/database/security/ProtectedString;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isProtected()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/keepassdroid/database/security/ProtectedString;->protect:Z

    return v0
.end method

.method public length()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedString;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/keepassdroid/database/security/ProtectedString;->string:Ljava/lang/String;

    return-object v0
.end method
