.class public Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;
.super Ljava/lang/Object;
.source "PermissionsUtil.java"


# static fields
.field private static final PERMISSION_READ_EXTERNAL_STORAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 34
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static checkAndRequestReadPermission(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 48
    invoke-static {v4, v5}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkReadPermission(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 50
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v4, v1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;--->checkAndRequestReadPermission(Landroid/app/Activity;Landroid/net/Uri;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static checkAndRequestReadPermission(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)Z
    .locals 7

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 57
    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v5}, Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;->checkReadPermission(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v0, 0x1

    .line 59
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v4, v1, v0}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return v5

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;--->checkAndRequestReadPermission(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)Z"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static checkReadPermission(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    const-string v0, "file"

    .line 66
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v0, 0x1

    if-nez v3, :cond_0

    return v0

    .line 72
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v3, v1, :cond_1

    return v0

    :cond_1
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 76
    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v2, 0x0

    return v2

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;--->checkReadPermission(Landroid/content/Context;Landroid/net/Uri;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static checkReadPermissionResult(Landroid/content/Context;I[I)Z
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v3, v1, :cond_0

    return v0

    .line 92
    :cond_0
    array-length v3, v4

    if-lez v3, :cond_1

    aget v3, v4, v0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    return v1

    :cond_2
    const v3, 0x7f110170

    .line 98
    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/util/PermissionsUtil;--->checkReadPermissionResult(Landroid/content/Context;I[I)Z"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
