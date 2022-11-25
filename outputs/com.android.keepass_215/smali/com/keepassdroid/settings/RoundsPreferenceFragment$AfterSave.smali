.class Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;
.super Lcom/keepassdroid/database/edit/OnFinish;
.source "RoundsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/settings/RoundsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfterSave"
.end annotation


# instance fields
.field private mCtx:Landroid/content/Context;

.field mFm:Landroidx/fragment/app/FragmentManager;

.field private mOldRounds:J

.field final synthetic this$0:Lcom/keepassdroid/settings/RoundsPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/keepassdroid/settings/RoundsPreferenceFragment;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/os/Handler;J)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->this$0:Lcom/keepassdroid/settings/RoundsPreferenceFragment;

    .line 122
    invoke-direct {p0, p4}, Lcom/keepassdroid/database/edit/OnFinish;-><init>(Landroid/os/Handler;)V

    .line 124
    iput-object p2, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mCtx:Landroid/content/Context;

    .line 125
    iput-object p3, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mFm:Landroidx/fragment/app/FragmentManager;

    .line 126
    iput-wide p5, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mOldRounds:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    iget-boolean v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->this$0:Lcom/keepassdroid/settings/RoundsPreferenceFragment;

    invoke-virtual {v0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->getPreference()Landroidx/preference/DialogPreference;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 135
    invoke-interface {v1, v0, v2}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mCtx:Landroid/content/Context;

    iget-object v1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mFm:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p0, v0, v1}, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->displayMessage(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    .line 139
    iget-object v0, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->this$0:Lcom/keepassdroid/settings/RoundsPreferenceFragment;

    invoke-static {v0}, Lcom/keepassdroid/settings/RoundsPreferenceFragment;->access$000(Lcom/keepassdroid/settings/RoundsPreferenceFragment;)Lcom/keepassdroid/database/PwDatabase;

    move-result-object v0

    iget-wide v1, p0, Lcom/keepassdroid/settings/RoundsPreferenceFragment$AfterSave;->mOldRounds:J

    invoke-virtual {v0, v1, v2}, Lcom/keepassdroid/database/PwDatabase;->setNumRounds(J)V

    .line 142
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/keepassdroid/database/edit/OnFinish;->run()V

    return-void
.end method
