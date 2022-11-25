.class public Lcom/keepassdroid/fileselect/BrowserDialog;
.super Landroid/app/Dialog;
.source "BrowserDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private isMarketInstalled()Z
    .locals 3

    .line 78
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/BrowserDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.android.vending"

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 44
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->setContentView(I)V

    const p1, 0x7f10008d

    .line 45
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->setTitle(I)V

    const p1, 0x7f09006a

    .line 47
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 48
    new-instance v0, Lcom/keepassdroid/fileselect/BrowserDialog$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/BrowserDialog$1;-><init>(Lcom/keepassdroid/fileselect/BrowserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090128

    .line 55
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 56
    new-instance v0, Lcom/keepassdroid/fileselect/BrowserDialog$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/BrowserDialog$2;-><init>(Lcom/keepassdroid/fileselect/BrowserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/BrowserDialog;->isMarketInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    const p1, 0x7f090129

    .line 67
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/BrowserDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 68
    new-instance v0, Lcom/keepassdroid/fileselect/BrowserDialog$3;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/BrowserDialog$3;-><init>(Lcom/keepassdroid/fileselect/BrowserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
