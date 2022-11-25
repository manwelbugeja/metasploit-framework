.class Lcom/keepassdroid/fileselect/FileDbHelper$1;
.super Ljava/lang/Object;
.source "FileDbHelper.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keepassdroid/fileselect/FileDbHelper;->deleteDatabase(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/keepassdroid/fileselect/FileDbHelper$1;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/keepassdroid/fileselect/FileDbHelper$1;->val$prefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
