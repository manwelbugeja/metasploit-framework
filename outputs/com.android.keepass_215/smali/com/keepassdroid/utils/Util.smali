.class public Lcom/keepassdroid/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAX_BUF_SIZE:I = 0x400


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x400

    .line 108
    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    new-array v2, v1, [B

    move v3, p2

    :cond_1
    if-lt v3, v1, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    :goto_0
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p1, v2, v0, v4}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v3, v4

    if-gtz v3, :cond_1

    :goto_1
    sub-int/2addr p2, v3

    return p2
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 100
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 101
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/SamsungClipboardException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-static {p0, p1, p2, v0}, Lcom/keepassdroid/utils/Util;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/keepassdroid/database/exception/SamsungClipboardException;
        }
    .end annotation

    const-string v0, "clipboard"

    .line 53
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 55
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 57
    invoke-static {p1}, Lcom/keepassdroid/compat/ClipDataCompat;->markSensitive(Landroid/content/ClipData;)V

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Lcom/keepassdroid/database/exception/SamsungClipboardException;

    invoke-direct {p1, p0}, Lcom/keepassdroid/database/exception/SamsungClipboardException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public static getClipboard(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "clipboard"

    .line 40
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ClipboardManager;

    .line 41
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getEditText(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static gotoUrl(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/keepassdroid/utils/Util;->gotoUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static gotoUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/ActivityNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static setEditText(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 92
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
