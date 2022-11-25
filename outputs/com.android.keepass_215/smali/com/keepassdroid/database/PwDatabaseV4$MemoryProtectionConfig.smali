.class public Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;
.super Ljava/lang/Object;
.source "PwDatabaseV4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/database/PwDatabaseV4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryProtectionConfig"
.end annotation


# instance fields
.field public autoEnableVisualHiding:Z

.field public protectNotes:Z

.field public protectPassword:Z

.field public protectTitle:Z

.field public protectUrl:Z

.field public protectUserName:Z

.field final synthetic this$0:Lcom/keepassdroid/database/PwDatabaseV4;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/database/PwDatabaseV4;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->this$0:Lcom/keepassdroid/database/PwDatabaseV4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    .line 109
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    .line 110
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    .line 111
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    .line 112
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    .line 114
    iput-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->autoEnableVisualHiding:Z

    return-void
.end method


# virtual methods
.method public GetProtection(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Title"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectTitle:Z

    return p1

    :cond_0
    const-string v0, "UserName"

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUserName:Z

    return p1

    :cond_1
    const-string v0, "Password"

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectPassword:Z

    return p1

    :cond_2
    const-string v0, "URL"

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectUrl:Z

    return p1

    :cond_3
    const-string v0, "Notes"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/keepassdroid/database/PwDatabaseV4$MemoryProtectionConfig;->protectNotes:Z

    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
