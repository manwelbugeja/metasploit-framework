.class public Lcom/keepassdroid/EntryActivity;
.super Lcom/keepassdroid/LockCloseHideActivity;
.source "EntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/EntryActivity$ClearClipboardTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final KEY_ENTRY:Ljava/lang/String; = "entry"

.field public static final KEY_REFRESH_POS:Ljava/lang/String; = "refresh_pos"

.field public static final NOTIFY_PASSWORD:I = 0x2

.field public static final NOTIFY_USERNAME:I = 0x1


# instance fields
.field private dateFormat:Ljava/text/DateFormat;

.field protected mEntry:Lcom/keepassdroid/database/PwEntry;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNM:Landroid/app/NotificationManager;

.field private mPos:I

.field private mShowPassword:Z

.field private mTimer:Ljava/util/Timer;

.field protected readOnly:Z

.field private timeFormat:Ljava/text/DateFormat;

.field final uiThreadCallback:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/keepassdroid/LockCloseHideActivity;-><init>()V

    .line 97
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/EntryActivity;->mTimer:Ljava/util/Timer;

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/keepassdroid/EntryActivity;->readOnly:Z

    .line 448
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keepassdroid/EntryActivity;->uiThreadCallback:Landroid/os/Handler;

    return-void
.end method

.method public static Launch(Landroid/app/Activity;Lcom/keepassdroid/database/PwEntry;I)V
    .locals 2

    .line 84
    instance-of v0, p1, Lcom/keepassdroid/database/PwEntryV4;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/EntryActivityV4;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keepassdroid/EntryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/utils/Types;->UUIDtoBytes(Ljava/util/UUID;)[B

    move-result-object p1

    const-string v1, "entry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "refresh_pos"

    .line 91
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/EntryActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/keepassdroid/EntryActivity;->timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keepassdroid/EntryActivity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/keepassdroid/EntryActivity;->timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private getDateTime(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keepassdroid/EntryActivity;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/keepassdroid/EntryActivity;->timeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getNotification(Ljava/lang/String;I)Landroid/app/Notification;
    .locals 2

    .line 238
    invoke-virtual {p0, p2}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 240
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    const/high16 p1, 0x14000000

    goto :goto_0

    :cond_0
    const/high16 p1, 0x10000000

    :goto_0
    const/4 v1, 0x0

    .line 245
    invoke-static {p0, v1, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 247
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "copy"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f10002c

    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v0, 0x7f0800e9

    .line 250
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private populateText(II)V
    .locals 0

    .line 289
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 290
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private populateText(ILjava/lang/String;)V
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 295
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPasswordStyle()V
    .locals 2

    const v0, 0x7f0900db

    .line 356
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    iget-boolean v1, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 361
    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    return-void
.end method

.method private showSamsungDialog()V
    .locals 4

    const v0, 0x7f10004b

    .line 477
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f10004e

    invoke-virtual {p0, v1}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 479
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 480
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    .line 481
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 482
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x1

    .line 483
    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 485
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f10004d

    .line 486
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/keepassdroid/EntryActivity$3;

    invoke-direct {v2, p0}, Lcom/keepassdroid/EntryActivity$3;-><init>(Lcom/keepassdroid/EntryActivity;)V

    const v3, 0x104000a

    .line 487
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 493
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 494
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p1, p2, v0}, Lcom/keepassdroid/EntryActivity;->timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 430
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/keepassdroid/utils/Util;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/keepassdroid/database/exception/SamsungClipboardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const p3, 0x7f100051

    .line 437
    invoke-virtual {p0, p3}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    const v0, 0x7f100050

    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 439
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 442
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity;->mTimer:Ljava/util/Timer;

    new-instance p3, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;

    invoke-direct {p3, p0, p0, p2}, Lcom/keepassdroid/EntryActivity$ClearClipboardTask;-><init>(Lcom/keepassdroid/EntryActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, p3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void

    .line 432
    :catch_0
    invoke-direct {p0}, Lcom/keepassdroid/EntryActivity;->showSamsungDialog()V

    return-void
.end method


# virtual methods
.method protected fillData(Z)V
    .locals 4

    const p1, 0x7f0900d8

    .line 261
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 262
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v0

    .line 263
    iget-object v1, v0, Lcom/keepassdroid/Database;->drawFactory:Lcom/keepassdroid/icons/DrawableFactory;

    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v3}, Lcom/keepassdroid/database/PwEntry;->getIcon()Lcom/keepassdroid/database/PwIcon;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/keepassdroid/icons/DrawableFactory;->assignDrawableTo(Landroid/widget/ImageView;Landroid/content/res/Resources;Lcom/keepassdroid/database/PwIcon;)V

    .line 265
    iget-object p1, v0, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    .line 267
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/keepassdroid/database/PwEntry;->getTitle(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900e1

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1, p1}, Lcom/keepassdroid/database/PwEntry;->getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900e5

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1, p1}, Lcom/keepassdroid/database/PwEntry;->getUrl(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900e3

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0, v1, p1}, Lcom/keepassdroid/database/PwEntry;->getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900db

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 272
    invoke-direct {p0}, Lcom/keepassdroid/EntryActivity;->setPasswordStyle()V

    .line 274
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getCreationTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keepassdroid/EntryActivity;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900d1

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getLastModificationTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keepassdroid/EntryActivity;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900d9

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getLastAccessTime()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/keepassdroid/EntryActivity;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0900c9

    invoke-direct {p0, v2, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getExpiryTime()Ljava/util/Date;

    move-result-object v0

    .line 279
    iget-object v2, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v2}, Lcom/keepassdroid/database/PwEntry;->expires()Z

    move-result v2

    const v3, 0x7f0900d6

    if-eqz v2, :cond_0

    .line 280
    invoke-direct {p0, v0}, Lcom/keepassdroid/EntryActivity;->getDateTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f10011e

    .line 282
    invoke-direct {p0, v3, v0}, Lcom/keepassdroid/EntryActivity;->populateText(II)V

    :goto_0
    const v0, 0x7f0900cc

    .line 284
    iget-object v2, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v2, v1, p1}, Lcom/keepassdroid/database/PwEntry;->getNotes(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/EntryActivity;->populateText(ILjava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/keepassdroid/LockCloseHideActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    if-ne p2, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 302
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->fillData(Z)V

    if-ne p2, p1, :cond_1

    .line 304
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 305
    iget p2, p0, Lcom/keepassdroid/EntryActivity;->mPos:I

    const-string v0, "refresh_pos"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, p3, p1}, Lcom/keepassdroid/EntryActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 131
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1000cf

    .line 132
    invoke-virtual {p0, v1}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    .line 134
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->setEntryView()V

    const p1, 0x7f090225

    .line 136
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 137
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 139
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 140
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/keepassdroid/EntryActivity;->dateFormat:Ljava/text/DateFormat;

    .line 141
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/EntryActivity;->timeFormat:Ljava/text/DateFormat;

    .line 143
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/keepassdroid/Database;->Loaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->finish()V

    return-void

    .line 149
    :cond_0
    iget-boolean v0, p1, Lcom/keepassdroid/Database;->readOnly:Z

    iput-boolean v0, p0, Lcom/keepassdroid/EntryActivity;->readOnly:Z

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->setResult(I)V

    .line 153
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "entry"

    .line 154
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/keepassdroid/utils/Types;->bytestoUUID([B)Ljava/util/UUID;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "refresh_pos"

    .line 155
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/keepassdroid/EntryActivity;->mPos:I

    .line 158
    iget-object p1, p1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    iget-object p1, p1, Lcom/keepassdroid/database/PwDatabase;->entries:Ljava/util/Map;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keepassdroid/database/PwEntry;

    iput-object p1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    if-nez p1, :cond_1

    const p1, 0x7f10006d

    .line 160
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 161
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->finish()V

    return-void

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->invalidateOptionsMenu()V

    .line 169
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p1, v0, v0}, Lcom/keepassdroid/database/PwEntry;->touch(ZZ)V

    .line 171
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->fillData(Z)V

    .line 173
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->setupEditButtons()V

    .line 176
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/keepassdroid/utils/NotificationUtil;->createChannels(Landroid/content/Context;)V

    const-string p1, "notification"

    .line 177
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/keepassdroid/EntryActivity;->mNM:Landroid/app/NotificationManager;

    .line 179
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getPassword()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "com.keepassdroid.copy_password"

    if-lez p1, :cond_2

    const p1, 0x7f100055

    .line 181
    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/EntryActivity;->getNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    .line 182
    iget-object v2, p0, Lcom/keepassdroid/EntryActivity;->mNM:Landroid/app/NotificationManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v2, "com.keepassdroid.copy_username"

    if-lez p1, :cond_3

    const p1, 0x7f100056

    .line 187
    invoke-direct {p0, v2, p1}, Lcom/keepassdroid/EntryActivity;->getNotification(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    .line 188
    iget-object v3, p0, Lcom/keepassdroid/EntryActivity;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    :cond_3
    new-instance p1, Lcom/keepassdroid/EntryActivity$2;

    invoke-direct {p1, p0}, Lcom/keepassdroid/EntryActivity$2;-><init>(Lcom/keepassdroid/EntryActivity;)V

    iput-object p1, p0, Lcom/keepassdroid/EntryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 213
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/keepassdroid/EntryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 313
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 315
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    .line 316
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f09015f

    .line 318
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 319
    iget-boolean v1, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    if-eqz v1, :cond_0

    const v1, 0x7f1000f0

    .line 320
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f1000f6

    .line 322
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    const v0, 0x7f09015a

    .line 325
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f090158

    .line 326
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090157

    .line 327
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 331
    iget-object v2, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 332
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 333
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 334
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 337
    :cond_1
    invoke-virtual {v2}, Lcom/keepassdroid/database/PwEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v2}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 344
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {v0}, Lcom/keepassdroid/database/PwEntry;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 348
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mNM:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 227
    :try_start_0
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    :cond_1
    invoke-super {p0}, Lcom/keepassdroid/LockCloseHideActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 367
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09015f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 421
    invoke-super {p0, p1}, Lcom/keepassdroid/LockCloseHideActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 415
    :pswitch_0
    invoke-static {}, Lcom/keepassdroid/app/App;->setShutdown()V

    .line 416
    invoke-virtual {p0, v3}, Lcom/keepassdroid/EntryActivity;->setResult(I)V

    .line 417
    invoke-virtual {p0}, Lcom/keepassdroid/EntryActivity;->finish()V

    return v3

    .line 391
    :pswitch_1
    iget-object p1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-virtual {p1}, Lcom/keepassdroid/database/PwEntry;->getUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "://"

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 399
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p1, 0x7f100121

    .line 401
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v3

    :pswitch_2
    const p1, 0x7f100060

    .line 370
    :try_start_1
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v3

    :catch_1
    const p1, 0x7f100077

    .line 372
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v2

    :pswitch_3
    const p1, 0x7f1000ab

    .line 406
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v1

    iget-object v1, v1, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {v0, v3, v1}, Lcom/keepassdroid/database/PwEntry;->getUsername(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/EntryActivity;->timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_4
    const p1, 0x7f1000a7

    .line 410
    invoke-virtual {p0, p1}, Lcom/keepassdroid/EntryActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/keepassdroid/EntryActivity;->mEntry:Lcom/keepassdroid/database/PwEntry;

    .line 411
    invoke-static {}, Lcom/keepassdroid/app/App;->getDB()Lcom/keepassdroid/Database;

    move-result-object v2

    iget-object v2, v2, Lcom/keepassdroid/Database;->pm:Lcom/keepassdroid/database/PwDatabase;

    invoke-virtual {v1, v3, v2}, Lcom/keepassdroid/database/PwEntry;->getPassword(ZLcom/keepassdroid/database/PwDatabase;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0, p1, v0, v3}, Lcom/keepassdroid/EntryActivity;->timeoutCopyToClipboard(Ljava/lang/String;Ljava/lang/String;Z)V

    return v3

    .line 378
    :cond_1
    iget-boolean v0, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1000f6

    .line 379
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 380
    iput-boolean v2, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    goto :goto_1

    :cond_2
    const v0, 0x7f1000f0

    .line 382
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 383
    iput-boolean v3, p0, Lcom/keepassdroid/EntryActivity;->mShowPassword:Z

    .line 385
    :goto_1
    invoke-direct {p0}, Lcom/keepassdroid/EntryActivity;->setPasswordStyle()V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7f090157
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setEntryView()V
    .locals 1

    const v0, 0x7f0c0032

    .line 108
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->setContentView(I)V

    return-void
.end method

.method protected setupEditButtons()V
    .locals 2

    const v0, 0x7f0900d5

    .line 112
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 113
    new-instance v1, Lcom/keepassdroid/EntryActivity$1;

    invoke-direct {v1, p0}, Lcom/keepassdroid/EntryActivity$1;-><init>(Lcom/keepassdroid/EntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-boolean v1, p0, Lcom/keepassdroid/EntryActivity;->readOnly:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    .line 122
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0900d4

    .line 124
    invoke-virtual {p0, v0}, Lcom/keepassdroid/EntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
