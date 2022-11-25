.class public Lcom/keepassdroid/AboutDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "AboutDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setVersion()V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/keepassdroid/AboutDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, ""

    :goto_0
    const v1, 0x7f090237

    .line 66
    invoke-virtual {p0, v1}, Lcom/keepassdroid/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 43
    invoke-virtual {p0, p1}, Lcom/keepassdroid/AboutDialog;->setContentView(I)V

    const p1, 0x7f10002c

    .line 44
    invoke-virtual {p0, p1}, Lcom/keepassdroid/AboutDialog;->setTitle(I)V

    .line 46
    invoke-direct {p0}, Lcom/keepassdroid/AboutDialog;->setVersion()V

    const p1, 0x7f090012

    .line 48
    invoke-virtual {p0, p1}, Lcom/keepassdroid/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 49
    new-instance v0, Lcom/keepassdroid/AboutDialog$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/AboutDialog$1;-><init>(Lcom/keepassdroid/AboutDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
