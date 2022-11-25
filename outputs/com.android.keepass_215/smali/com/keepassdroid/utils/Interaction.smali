.class public Lcom/keepassdroid/utils/Interaction;
.super Ljava/lang/Object;
.source "Interaction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 44
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 46
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
