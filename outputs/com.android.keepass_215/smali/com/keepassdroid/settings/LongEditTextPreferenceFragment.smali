.class public Lcom/keepassdroid/settings/LongEditTextPreferenceFragment;
.super Landroidx/preference/EditTextPreferenceDialogFragmentCompat;
.source "LongEditTextPreferenceFragment.java"


# instance fields
.field private final preference:Lcom/keepassdroid/settings/LongEditTextPreference;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/settings/LongEditTextPreference;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/keepassdroid/settings/LongEditTextPreferenceFragment;->preference:Lcom/keepassdroid/settings/LongEditTextPreference;

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/keepassdroid/settings/LongEditTextPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/keepassdroid/settings/LongEditTextPreferenceFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroidx/preference/EditTextPreferenceDialogFragmentCompat;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
