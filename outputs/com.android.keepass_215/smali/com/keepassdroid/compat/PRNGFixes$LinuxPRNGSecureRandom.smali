.class public Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;
.super Ljava/security/SecureRandomSpi;
.source "PRNGFixes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keepassdroid/compat/PRNGFixes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinuxPRNGSecureRandom"
.end annotation


# static fields
.field private static final URANDOM_FILE:Ljava/io/File;

.field private static final sLock:Ljava/lang/Object;

.field private static sUrandomIn:Ljava/io/DataInputStream;

.field private static sUrandomOut:Ljava/io/OutputStream;


# instance fields
.field private mSeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 244
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/urandom"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    .line 247
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    return-void
.end method

.method private getUrandomInputStream()Ljava/io/DataInputStream;
    .locals 5

    .line 317
    sget-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    sget-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 324
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    sput-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 327
    :try_start_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for reading"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 331
    :cond_0
    :goto_0
    sget-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomIn:Ljava/io/DataInputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 332
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getUrandomOutputStream()Ljava/io/OutputStream;
    .locals 5

    .line 336
    sget-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    sget-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 339
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sput-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 341
    :try_start_2
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for writing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 345
    :cond_0
    :goto_0
    sget-object v1, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sUrandomOut:Ljava/io/OutputStream;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 346
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 0

    .line 311
    new-array p1, p1, [B

    .line 312
    invoke-virtual {p0, p1}, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->engineNextBytes([B)V

    return-object p1
.end method

.method protected engineNextBytes([B)V
    .locals 3

    .line 290
    iget-boolean v0, p0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Lcom/keepassdroid/compat/PRNGFixes;->access$000()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->engineSetSeed([B)V

    .line 297
    :cond_0
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :try_start_1
    invoke-direct {p0}, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    .line 299
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 300
    :try_start_2
    monitor-enter v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 301
    :try_start_3
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 302
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception p1

    .line 299
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 304
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to read from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineSetSeed([B)V
    .locals 3

    .line 276
    :try_start_0
    sget-object v0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->sLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :try_start_1
    invoke-direct {p0}, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->getUrandomOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 278
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 280
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    const/4 p1, 0x1

    .line 281
    iput-boolean p1, p0, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->mSeeded:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    .line 278
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 283
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mix seed into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/keepassdroid/compat/PRNGFixes$LinuxPRNGSecureRandom;->URANDOM_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
