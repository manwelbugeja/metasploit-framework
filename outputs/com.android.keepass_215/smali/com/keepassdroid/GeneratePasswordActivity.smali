.class public Lcom/keepassdroid/GeneratePasswordActivity;
.super Lcom/keepassdroid/LockCloseActivity;
.source "GeneratePasswordActivity.java"


# static fields
.field private static final BUTTON_IDS:[I


# instance fields
.field private lengthButtonsListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 37
    fill-array-data v0, :array_0

    sput-object v0, Lcom/keepassdroid/GeneratePasswordActivity;->BUTTON_IDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090067
        0x7f090068
        0x7f090065
        0x7f090066
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseActivity;-><init>()V

    .line 45
    new-instance v0, Lcom/keepassdroid/GeneratePasswordActivity$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GeneratePasswordActivity$1;-><init>(Lcom/keepassdroid/GeneratePasswordActivity;)V

    iput-object v0, p0, Lcom/keepassdroid/GeneratePasswordActivity;->lengthButtonsListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static Launch(Landroid/app/Activity;)V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/GeneratePasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/GeneratePasswordActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/keepassdroid/GeneratePasswordActivity;->fillPassword()V

    return-void
.end method

.method private fillPassword()V
    .locals 2

    const v0, 0x7f0901a1

    .line 102
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 103
    invoke-virtual {p0}, Lcom/keepassdroid/GeneratePasswordActivity;->generatePassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public generatePassword()Ljava/lang/String;
    .locals 12

    const v0, 0x7f090136

    const/4 v1, 0x1

    .line 110
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v0, 0x7f090073

    .line 112
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    .line 114
    new-instance v2, Lcom/keepassdroid/password/PasswordGenerator;

    invoke-direct {v2, p0}, Lcom/keepassdroid/password/PasswordGenerator;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    const v0, 0x7f09006e

    .line 118
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    const v0, 0x7f09006d

    .line 119
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    const v0, 0x7f09006f

    .line 120
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    const v0, 0x7f090072

    .line 121
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    const v0, 0x7f090070

    .line 122
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    const v0, 0x7f090071

    .line 123
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    const v0, 0x7f09006c

    .line 124
    invoke-virtual {p0, v0}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v11

    .line 116
    invoke-virtual/range {v2 .. v11}, Lcom/keepassdroid/password/PasswordGenerator;->generatePassword(IZZZZZZZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    const v0, 0x7f100086

    .line 126
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003b

    .line 57
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GeneratePasswordActivity;->setContentView(I)V

    const/4 p1, 0x0

    .line 58
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GeneratePasswordActivity;->setResult(I)V

    .line 60
    sget-object v0, Lcom/keepassdroid/GeneratePasswordActivity;->BUTTON_IDS:[I

    array-length v1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget v2, v0, p1

    .line 61
    invoke-virtual {p0, v2}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 62
    iget-object v3, p0, Lcom/keepassdroid/GeneratePasswordActivity;->lengthButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f090108

    .line 65
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 66
    new-instance v0, Lcom/keepassdroid/GeneratePasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GeneratePasswordActivity$2;-><init>(Lcom/keepassdroid/GeneratePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090015

    .line 72
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    new-instance v0, Lcom/keepassdroid/GeneratePasswordActivity$3;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GeneratePasswordActivity$3;-><init>(Lcom/keepassdroid/GeneratePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006b

    .line 87
    invoke-virtual {p0, p1}, Lcom/keepassdroid/GeneratePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 88
    new-instance v0, Lcom/keepassdroid/GeneratePasswordActivity$4;

    invoke-direct {v0, p0}, Lcom/keepassdroid/GeneratePasswordActivity$4;-><init>(Lcom/keepassdroid/GeneratePasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-direct {p0}, Lcom/keepassdroid/GeneratePasswordActivity;->fillPassword()V

    return-void
.end method
