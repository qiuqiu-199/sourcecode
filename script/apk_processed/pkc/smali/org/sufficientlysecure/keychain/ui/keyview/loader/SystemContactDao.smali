.class public Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;
.super Ljava/lang/Object;
.source "SystemContactDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;
    }
.end annotation


# static fields
.field private static final CONTACT_NOT_DELETED:Ljava/lang/String; = "0"

.field private static final INDEX_CONTACT_ID:I

.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private final contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->PROJECTION:[Ljava/lang/String;

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;---><clinit>()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/util/ContactHelper;Landroid/content/ContentResolver;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 57
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->context:Landroid/content/Context;

    .line 59
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

    .line 60
    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contentResolver:Landroid/content/ContentResolver;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;---><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/util/ContactHelper;Landroid/content/ContentResolver;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;
    .locals 6

    move-object/16 v3, p0

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-direct {v0, v3}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 54
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;

    invoke-direct {v2, v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/util/ContactHelper;Landroid/content/ContentResolver;)V

    return-object v2

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;--->getInstance(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getSystemContactInfo(JZ)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;
    .locals 14

    move-object/16 v11, p0

    move-wide/16 v12, p1

    move/16 p0, p3

    .line 64
    iget-object v0, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->context:Landroid/content/Context;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const-string v12, "Keychain"

    .line 66
    new-array v13, v1, [Ljava/lang/Object;

    const-string p0, "loading linked system contact not possible READ_CONTACTS permission denied!"

    aput-object p0, v13, v3

    invoke-static {v12, v13}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    if-eqz p0, :cond_1

    .line 70
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 72
    :goto_1
    iget-object v4, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->PROJECTION:[Ljava/lang/String;

    const-string v7, "account_type = ? AND sourceid = ? AND deleted = ?"

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    const-string v0, "org.sufficientlysecure.keychain.account"

    aput-object v0, v8, v3

    .line 78
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const/4 v0, 0x2

    const-string v1, "0"

    aput-object v1, v8, v0

    const/4 v9, 0x0

    .line 72
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v12, "Error loading key items!"

    .line 83
    new-array v13, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 88
    :cond_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    .line 92
    :cond_3
    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v4, -0x1

    cmp-long v1, v7, v4

    if-nez v1, :cond_4

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_4
    if-eqz p0, :cond_6

    .line 99
    :try_start_2
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getMainProfileContactName()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 100
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 101
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v1, v2

    goto :goto_2

    .line 104
    :cond_6
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-virtual {v1, v7, v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getContactName(J)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v9, v1

    if-nez v9, :cond_7

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_7
    if-eqz p0, :cond_8

    .line 113
    :try_start_3
    iget-object p0, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-virtual {p0, v3}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->loadMainProfilePhoto(Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_3
    move-object v10, p0

    goto :goto_4

    .line 115
    :cond_8
    iget-object p0, v11, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;->contactHelper:Lorg/sufficientlysecure/keychain/util/ContactHelper;

    invoke-virtual {p0, v7, v8, v3}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->loadPhotoByContactId(JZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3

    .line 118
    :goto_4
    new-instance p0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;

    move-object v4, p0

    move-wide v5, v12

    invoke-direct/range {v4 .. v10}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;-><init>(JJLjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_0
    move-exception v12

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 121
    throw v12

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao;--->getSystemContactInfo(JZ)Lorg/sufficientlysecure/keychain/ui/keyview/loader/SystemContactDao$SystemContactInfo;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
