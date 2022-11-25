.class public Leu/chainfire/lumen/root/a;
.super Lc/a/a/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()[Ljava/lang/String;
    .locals 9

    const-string v0, "allow servicemanager init dir search"

    const-string v1, "allow servicemanager init file { read open }"

    const-string v2, "allow servicemanager init process getattr"

    const-string v3, "allow init surfaceflinger_service service_manager find"

    const-string v4, "allow surfaceflinger app_data_file dir { search }"

    const-string v5, "allow surfaceflinger app_data_file file { open read execute getattr }"

    const-string v6, "allow surfaceflinger supersu process sigchld"

    const-string v7, "allow surfaceflinger magisk process sigchld"

    const-string v8, "allow surfaceflinger system_data_file lnk_file read"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
