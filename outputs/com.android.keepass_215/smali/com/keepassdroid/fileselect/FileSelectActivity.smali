.class public Lcom/keepassdroid/fileselect/FileSelectActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FileSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;,
        Lcom/keepassdroid/fileselect/FileSelectActivity$LaunchGroupActivity;
    }
.end annotation


# static fields
.field private static final CMENU_CLEAR:I = 0x1

.field public static final CREATE_DOC:I = 0x5

.field public static final FILE_BROWSE:I = 0x1

.field public static final GET_CONTENT:I = 0x2

.field public static final OPEN_DOC:I = 0x3

.field private static final PERMISSION_REQUEST_ID:I = 0x4


# instance fields
.field private fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mList:Landroid/widget/ListView;

.field private recentMode:Z

.field private supportsDirectFile:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->recentMode:Z

    .line 99
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    return-void
.end method

.method static synthetic access$000(Lcom/keepassdroid/fileselect/FileSelectActivity;)Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    return p0
.end method

.method static synthetic access$100(Lcom/keepassdroid/fileselect/FileSelectActivity;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->createFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keepassdroid/fileselect/FileSelectActivity;)Lcom/keepassdroid/fileselect/RecentFileHistory;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keepassdroid/fileselect/FileSelectActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->refreshList()V

    return-void
.end method

.method private createDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 155
    new-instance v4, Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;

    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$LaunchGroupActivity;

    invoke-direct {v0, p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity$LaunchGroupActivity;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;Ljava/lang/String;)V

    invoke-direct {v4, p0, v0}, Lcom/keepassdroid/fileselect/FileSelectActivity$CollectPassword;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;Lcom/keepassdroid/database/edit/FileOnFinish;)V

    .line 159
    new-instance v6, Lcom/keepassdroid/database/edit/CreateDB;

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/keepassdroid/database/edit/CreateDB;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/keepassdroid/database/edit/OnFinish;Z)V

    .line 160
    new-instance p1, Lcom/keepassdroid/ProgressTask;

    const p2, 0x7f100133

    invoke-direct {p1, p0, v6, p2}, Lcom/keepassdroid/ProgressTask;-><init>(Landroid/app/Activity;Lcom/keepassdroid/database/edit/RunnableOnFinish;I)V

    .line 163
    invoke-virtual {p1}, Lcom/keepassdroid/ProgressTask;->run()V

    return-void
.end method

.method private createFile(Landroid/net/Uri;)V
    .locals 1

    .line 146
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {p1, p0}, Lcom/keepassdroid/utils/UriUtil;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->createDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private createFile(Ljava/lang/String;)V
    .locals 4

    .line 104
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 106
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f100076

    .line 107
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 114
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    const p1, 0x7f100075

    .line 124
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 126
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->createDB(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    const p1, 0x7f10007c

    .line 115
    :try_start_1
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f100078

    .line 136
    invoke-virtual {p0, v2}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private fillData()V
    .locals 4

    .line 401
    iget-boolean v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    const v1, 0x7f0900ed

    if-eqz v0, :cond_0

    .line 403
    invoke-virtual {p0, v1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f10005d

    invoke-virtual {p0, v3}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 407
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0c0036

    iget-object v3, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-virtual {v3}, Lcom/keepassdroid/fileselect/RecentFileHistory;->getDbList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, p0, v2, v1, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->mAdapter:Landroid/widget/ListAdapter;

    .line 408
    iget-object v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private launchUrl(I)Z
    .locals 1

    const/4 v0, 0x1

    .line 537
    :try_start_0
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const p1, 0x7f100077

    .line 539
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x0

    return p1
.end method

.method private refreshList()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 447
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 449
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->fillData()V

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 453
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, "file://"

    .line 455
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    .line 456
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 459
    :cond_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    const/4 v2, 0x5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    if-ne p1, v2, :cond_6

    :cond_2
    if-ne p2, v0, :cond_6

    if-eqz p3, :cond_6

    .line 467
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 469
    invoke-static {p0}, Lcom/keepassdroid/compat/StorageAF;->useStorageFramework(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    .line 473
    invoke-static {p3, p2, v1}, Lcom/keepassdroid/compat/ContentResolverCompat;->takePersistableUriPermission(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 474
    invoke-static {p3, p2, v3}, Lcom/keepassdroid/compat/ContentResolverCompat;->takePersistableUriPermission(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    if-ne p1, v3, :cond_4

    .line 480
    invoke-static {p0, p2}, Lcom/keepassdroid/utils/UriUtil;->translate(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 482
    :cond_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    if-ne p1, v2, :cond_5

    .line 485
    invoke-direct {p0, p2}, Lcom/keepassdroid/fileselect/FileSelectActivity;->createFile(Landroid/net/Uri;)V

    goto :goto_1

    .line 490
    :cond_5
    :try_start_1
    invoke-static {p0, p3}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/keepassdroid/database/exception/ContentFileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const p1, 0x7f100004

    .line 495
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 496
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_2
    const p1, 0x7f10008e

    .line 492
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 493
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    move-object p1, p3

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 503
    :cond_7
    :goto_2
    iget-boolean p2, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    const p2, 0x7f0900ed

    .line 504
    invoke-virtual {p0, p2}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 505
    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 578
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 580
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 581
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p1

    check-cast p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 583
    iget-object p1, p1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 584
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 585
    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$6;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$6;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v1

    .line 595
    invoke-virtual {v0, v3}, Lcom/keepassdroid/fileselect/FileSelectActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_0
    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 170
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-static {}, Lcom/keepassdroid/app/App;->getFileHistory()Lcom/keepassdroid/fileselect/RecentFileHistory;

    move-result-object p1

    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    .line 174
    invoke-virtual {p1}, Lcom/keepassdroid/fileselect/RecentFileHistory;->hasRecentFiles()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 175
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->recentMode:Z

    const p1, 0x7f0c0037

    .line 176
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0c0039

    .line 178
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->setContentView(I)V

    :goto_0
    const p1, 0x7f0900ed

    .line 181
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    const p1, 0x7f090225

    .line 182
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 183
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    const p1, 0x7f0900ee

    .line 185
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->mList:Landroid/widget/ListView;

    .line 187
    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$1;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$1;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const p1, 0x7f090193

    .line 197
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 198
    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$2;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090093

    .line 229
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 230
    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$3;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$3;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-boolean p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->supportsDirectFile:Z

    if-eqz p1, :cond_2

    const p1, 0x7f090064

    .line 264
    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 265
    new-instance v0, Lcom/keepassdroid/fileselect/FileSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$4;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_2
    invoke-direct {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->fillData()V

    .line 316
    iget-object p1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 319
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "defaultFileName"

    const-string v1, ""

    .line 320
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 323
    invoke-static {p1}, Lcom/keepassdroid/utils/UriUtil;->parseDefaultFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lcom/keepassdroid/utils/EmptyUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 328
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    :try_start_0
    invoke-static {p0, p1}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2

    .line 340
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keepassdroid/PasswordActivity;->Launch(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 571
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const/4 p2, 0x0

    const/4 p3, 0x1

    const v0, 0x7f10013e

    .line 573
    invoke-interface {p1, p2, p3, p2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 527
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 529
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    .line 530
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 413
    new-instance p1, Lcom/keepassdroid/fileselect/FileSelectActivity$5;

    invoke-direct {p1, p0}, Lcom/keepassdroid/fileselect/FileSelectActivity$5;-><init>(Lcom/keepassdroid/fileselect/FileSelectActivity;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Integer;

    .line 442
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-virtual {p1, p2}, Lcom/keepassdroid/fileselect/FileSelectActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 565
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :sswitch_0
    const p1, 0x7f100131

    .line 550
    invoke-direct {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->launchUrl(I)Z

    move-result p1

    return p1

    :sswitch_1
    const p1, 0x7f100060

    .line 553
    invoke-direct {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->launchUrl(I)Z

    move-result p1

    return p1

    .line 561
    :sswitch_2
    invoke-static {p0}, Lcom/keepassdroid/settings/AppSettingsActivity;->Launch(Landroid/content/Context;)V

    return v1

    .line 556
    :sswitch_3
    new-instance p1, Lcom/keepassdroid/AboutDialog;

    invoke-direct {p1, p0}, Lcom/keepassdroid/AboutDialog;-><init>(Landroid/content/Context;)V

    .line 557
    invoke-virtual {p1}, Lcom/keepassdroid/AboutDialog;->show()V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f090154 -> :sswitch_3
        0x7f090155 -> :sswitch_2
        0x7f090159 -> :sswitch_1
        0x7f09015c -> :sswitch_0
    .end sparse-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 352
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 354
    aget p1, p3, p1

    if-nez p1, :cond_0

    aget p1, p3, p2

    if-nez p1, :cond_0

    const p1, 0x7f0900ed

    .line 358
    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->getEditText(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p1

    .line 360
    invoke-direct {p0, p1}, Lcom/keepassdroid/fileselect/FileSelectActivity;->createFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f10011f

    .line 362
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 511
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 514
    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->fileHistory:Lcom/keepassdroid/fileselect/RecentFileHistory;

    invoke-virtual {v0}, Lcom/keepassdroid/fileselect/RecentFileHistory;->hasRecentFiles()Z

    move-result v0

    iget-boolean v1, p0, Lcom/keepassdroid/fileselect/FileSelectActivity;->recentMode:Z

    if-eq v0, v1, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 517
    invoke-virtual {p0, v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 518
    invoke-virtual {p0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->finish()V

    :cond_0
    const v0, 0x7f0900f0

    .line 521
    invoke-virtual {p0, v0}, Lcom/keepassdroid/fileselect/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/keepassdroid/view/FileNameView;

    .line 522
    invoke-virtual {v0}, Lcom/keepassdroid/view/FileNameView;->updateExternalStorageWarning()V

    return-void
.end method
