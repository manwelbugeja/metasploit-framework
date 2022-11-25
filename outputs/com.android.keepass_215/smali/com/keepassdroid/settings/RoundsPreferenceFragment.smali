.class public Lcom/keepassdroid/settings/RoundsPreferenceFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "RoundsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;
    }
.end annotation


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mPM:Lcom/keepassdroid/database/PwDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/settings/RoundsPreferenceFragment;)Lcom/keepassdroid/database/PwDatabase;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mPM:Lcom/keepassdroid/database/PwDatabase;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/keepassdroid/settings/RoundsPreferenceFragment;
    .locals 3

    .line 71
    new-instance v0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;

    invoke-direct {v0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    .line 73
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x1020003

    .line 59
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x2

    .line 60
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 62
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    .line 63
    iget-object v0, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iput-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mPM:Lcom/keepassdroid/database/PwDatabase;

    .line 64
    iget-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mEditText:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwDatabase;->getNumRounds()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDialogClosed(Z)V
    .locals 10

    .line 80
    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Landroidx/preference/EditTextPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mPM:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwDatabase;->getNumRounds()J

    move-result-wide v7

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mPM:Lcom/keepassdroid/database/PwDatabase;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/keepassdroid/database/PwDatabase;->setNumRounds(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100083

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 103
    iget-object p1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->mPM:Lcom/keepassdroid/database/PwDatabase;

    const-wide/32 v0, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Lcom/keepassdroid/database/PwDatabase;->setNumRounds(J)V

    .line 106
    :goto_0
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    .line 108
    new-instance p1, Lcom/keepassdroid/database/edit/SaveDB;

    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    new-instance v9, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;-><init>(Lcom/keepassdroid/settings/RoundsPreferenceFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/os/Handler;J)V

    invoke-direct {p1, v0, v1, v9}, Lcom/keepassdroid/database/edit/SaveDB;-><init>(Landroid/content/Context;Lcom/keepassdroid/Database;Lcom/keepassdroid/database/edit/OnFinish;)V

    .line 109
    new-instance v0, Lcom/keepassdroid/ProgressTask;

    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f100149

    invoke-direct {v0, v1, p1, v2}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 110
    invoke-virtual {v0}, Lcom/keepassdroid/ProgressTask;->run()V

    goto :goto_1

    .line 89
    :catch_1
    invoke-virtual {p0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100082

    invoke-static {v0, v1, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_1
    return-void
.end method
