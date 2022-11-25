.class public abstract Lcom/keepassdroid/EntryEditActivity;
.super Lcom/keepassdroid/LockCloseHideActivity;
.source "EntryEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/EntryEditActivity$AfterSave;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final KEY_ENTRY:Ljava/lang/String; = "entry"

.field public static final KEY_PARENT:Ljava/lang/String; = "parent"

.field public static final RESULT_OK_ICON_PICKER:I = 0x3e8

.field public static final RESULT_OK_PASSWORD_GENERATOR:I = 0x3e9


# instance fields
.field protected mEntry:Lcom/keepassdroid/database/PwEntry;

.field protected mIsNew:Z

.field protected mSelectedIconID:I

.field private mShowPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseHideActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/keepassdroid/EntryEditActivity;->mSelectedIconID:I

    return-void
.end method

.method public static Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwEntry;)V
    .locals 2

    .line 80
    instance-of v0, p1, Lcom/keepassdroid/database/PwEntryV3;

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/EntryEditActivityV3;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 83
    :cond_0
    instance-of v0, p1, Lcom/keepassdroid/database/PwEntryV4;

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/EntryEditActivityV4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not yet implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwGroup;)V
    .locals 3

    .line 97
    instance-of v0, p1, Lcom/keepassdroid/database/PwGroupV3;

    const-string v1, "parent"

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keepassdroid/EntryEditActivityV3;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    check-cast p1, Lcom/keepassdroid/database/PwGroupV3;

    invoke-static {v0, v1, p1}, Lcom/keepassdroid/EntryEditActivityV3;->putParentId(Landroid/content/Intent;Ljava/lang/String;Lcom/keepassdroid/database/PwGroupV3;)V

    goto :goto_0

    .line 101
    :cond_0
    instance-of v0, p1, Lcom/keepassdroid/database/PwGroupV4;

    if-eqz v0, :cond_1

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/keepassdroid/EntryEditActivityV4;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    check-cast p1, Lcom/keepassdroid/database/PwGroupV4;

    invoke-static {v0, v1, p1}, Lcom/keepassdroid/EntryEditActivityV4;->putParentId(Landroid/content/Intent;Ljava/lang/String;Lcom/keepassdroid/database/PwGroupV4;)V

    :goto_0
    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not yet implemented."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private populateText(ILjava/lang/String;)V
    .locals 0

    .line 378
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 379
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPasswordStyle()V
    .locals 3

    const v0, 0x7f0900db

    .line 348
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900ce

    .line 349
    invoke-virtual {p0, v1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 351
    iget-boolean v2, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x91

    .line 352
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 353
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x81

    .line 356
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 357
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillData()V
    .locals 4

    const v0, 0x7f09011e

    .line 362
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 363
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v3}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/keepassdroid/icons/DrawableFactory;->assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V

    .line 365
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getTitle()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900e1

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900e5

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getUrl()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900e3

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v1}, Lcom/keepassdroid/database/PwEntry;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const v1, 0x7f0900db

    .line 370
    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    const v1, 0x7f0900ce

    .line 371
    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/keepassdroid/EntryEditActivity;->setPasswordStyle()V

    .line 374
    iget-object v0, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getNotes()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0900cc

    invoke-direct {p0, v1, v0}, Lcom/keepassdroid/EntryEditActivity;->populateText(ILjava/lang/String;)V

    return-void
.end method

.method protected abstract getParentGroupId(Landroid/content/Intent;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroupId;
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/keepassdroid/LockCloseHideActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x3e8

    if-eq p2, p1, :cond_1

    const/16 p1, 0x3e9

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.keepassdroid.password.generated_password"

    .line 289
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0900db

    .line 290
    invoke-virtual {p0, p2}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    const p3, 0x7f0900ce

    .line 291
    invoke-virtual {p0, p3}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 293
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "icon_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/keepassdroid/EntryEditActivity;->mSelectedIconID:I

    const p1, 0x7f09011e

    .line 284
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 285
    iget p2, p0, Lcom/keepassdroid/EntryEditActivity;->mSelectedIconID:I

    invoke-static {p2}, Lcom/keepassdroid/icons/Icons;->iconToResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 116
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1000cf

    .line 117
    invoke-virtual {p0, v1}, Lcom/keepassdroid/EntryEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    .line 119
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002e

    .line 120
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->setContentView(I)V

    const p1, 0x7f090225

    .line 121
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 122
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const/4 p1, 0x0

    .line 124
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->setResult(I)V

    .line 127
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->finish()V

    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "entry"

    .line 134
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 136
    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    if-nez v3, :cond_1

    const-string p1, "parent"

    .line 139
    invoke-virtual {p0, v2, p1}, Lcom/keepassdroid/EntryEditActivity;->getParentGroupId(Landroid/content/Intent;Ljava/lang/String;)Lcom/keepassdroid/database/PwGroupId;

    move-result-object p1

    .line 140
    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwGroup;

    .line 141
    invoke-static {p1}, Lcom/keepassdroid/database/PwEntry;->getInstance(Lcom/keepassdroid/database/PwGroup;)Lcom/keepassdroid/database/PwEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 142
    iput-boolean v1, p0, Lcom/keepassdroid/EntryEditActivity;->mIsNew:Z

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {v3}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v1

    .line 148
    iget-object v0, v0, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/database/PwEntry;

    iput-object v0, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 149
    iput-boolean p1, p0, Lcom/keepassdroid/EntryEditActivity;->mIsNew:Z

    .line 151
    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->fillData()V

    :goto_0
    const p1, 0x7f0900de

    .line 154
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x1000000

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->setScrollBarStyle(I)V

    const p1, 0x7f09011e

    .line 157
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 158
    new-instance v0, Lcom/keepassdroid/EntryEditActivity$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivity$1;-><init>(Lcom/keepassdroid/EntryEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090107

    .line 165
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 166
    new-instance v0, Lcom/keepassdroid/EntryEditActivity$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivity$2;-><init>(Lcom/keepassdroid/EntryEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900dd

    .line 174
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 175
    new-instance v0, Lcom/keepassdroid/EntryEditActivity$3;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivity$3;-><init>(Lcom/keepassdroid/EntryEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900cb

    .line 207
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 208
    new-instance v0, Lcom/keepassdroid/EntryEditActivity$4;

    invoke-direct {v0, p0}, Lcom/keepassdroid/EntryEditActivity$4;-><init>(Lcom/keepassdroid/EntryEditActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-boolean p1, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    if-eqz p1, :cond_2

    const p1, 0x7f0900db

    .line 219
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v0, 0x7f0900ce

    .line 220
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x91

    .line 222
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 305
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 307
    invoke-virtual {p0}, Lcom/keepassdroid/EntryEditActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0001

    .line 308
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09015f

    .line 311
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 312
    iget-boolean v0, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1000f0

    .line 313
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v0, 0x7f1000f6

    .line 315
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090159

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f09015f

    if-eq v0, v1, :cond_0

    .line 344
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 333
    :cond_0
    iget-boolean v0, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    if-eqz v0, :cond_1

    const v0, 0x7f1000f6

    .line 334
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 335
    iput-boolean v2, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    goto :goto_0

    :cond_1
    const v0, 0x7f1000f0

    .line 337
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 338
    iput-boolean v3, p0, Lcom/keepassdroid/EntryEditActivity;->mShowPassword:Z

    .line 340
    :goto_0
    invoke-direct {p0}, Lcom/keepassdroid/EntryEditActivity;->setPasswordStyle()V

    return v3

    :cond_2
    const p1, 0x7f100060

    .line 325
    :try_start_0
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    const p1, 0x7f100077

    .line 327
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2
.end method

.method protected populateNewEntry()Lcom/keepassdroid/database/PwEntry;
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryEditActivity;->populateNewEntry(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/PwEntry;

    move-result-object v0

    return-object v0
.end method

.method protected populateNewEntry(Lcom/keepassdroid/database/PwEntry;)Lcom/keepassdroid/database/PwEntry;
    .locals 2

    if-nez p1, :cond_0

    .line 254
    iget-object p1, p0, Lcom/keepassdroid/EntryEditActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwEntry;->clone(Z)Lcom/keepassdroid/database/PwEntry;

    move-result-object p1

    .line 261
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 262
    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwEntry;->setLastAccessTime(Ljava/util/Date;)V

    .line 263
    invoke-virtual {p1, v0}, Lcom/keepassdroid/database/PwEntry;->setLastModificationTime(Ljava/util/Date;)V

    .line 265
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    iget-object v0, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    const v1, 0x7f0900e1

    .line 266
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwEntry;->setTitle(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V

    const v1, 0x7f0900e3

    .line 267
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwEntry;->setUrl(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V

    const v1, 0x7f0900e5

    .line 268
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwEntry;->setUsername(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V

    const v1, 0x7f0900cc

    .line 269
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwEntry;->setNotes(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V

    const v1, 0x7f0900db

    .line 270
    invoke-static {p0, v1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/keepassdroid/database/PwEntry;->setPassword(Ljava/lang/String;Lcom/keepassdroid/database/PwDatabase;)V

    return-object p1
.end method

.method protected validateBeforeSaving()Z
    .locals 4

    const v0, 0x7f0900e1

    .line 230
    invoke-static {p0, v0}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const v0, 0x7f100085

    .line 232
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_0
    const v0, 0x7f0900db

    .line 237
    invoke-static {p0, v0}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0900ce

    .line 238
    invoke-static {p0, v3}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f100081

    .line 240
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1

    :cond_1
    return v2
.end method
