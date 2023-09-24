.class public Lorg/sufficientlysecure/keychain/util/ContactHelper;
.super Ljava/lang/Object;
.source "ContactHelper.java"


# instance fields
.field private final keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 61
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 64
    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    move-result-object v2

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/util/ContactHelper;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ContactHelper;---><init>(Landroid/content/Context;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteFlaggedMainProfileRawContacts()I
    .locals 9

    move-object/16 v6, p0

    .line 612
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 613
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 615
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "account_type=? AND deleted=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "org.sufficientlysecure.keychain.account"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->deleteFlaggedMainProfileRawContacts()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteFlaggedNormalRawContacts()I
    .locals 9

    move-object/16 v6, p0

    .line 678
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 681
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "account_type=? AND deleted=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "org.sufficientlysecure.keychain.account"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "1"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    const-string v7, "M_InsDal"

    const-string v8, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->deleteFlaggedNormalRawContacts()I"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteMainProfileRawContactByMasterKeyId(J)I
    .locals 9

    move-object/16 v6, p0

    move-wide/16 v7, p1

    .line 592
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 593
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 595
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "account_type=? AND sourceid=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "org.sufficientlysecure.keychain.account"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 599
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 595
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->deleteMainProfileRawContactByMasterKeyId(J)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteRawContactByMasterKeyId(J)I
    .locals 9

    move-object/16 v6, p0

    move-wide/16 v7, p1

    .line 664
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 665
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 667
    iget-object v1, v6, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "account_type=? AND sourceid=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "org.sufficientlysecure.keychain.account"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 671
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v3, v8

    .line 667
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    return v7

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->deleteRawContactByMasterKeyId(J)I"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private findContactId(J)J
    .locals 11

    move-object/16 v8, p0

    move-wide/16 v9, p1

    .line 348
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "contact_id"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "account_type=? AND sourceid=? AND deleted=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "org.sufficientlysecure.keychain.account"

    aput-object v7, v5, v6

    .line 357
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    const-string v9, "0"

    const/4 v10, 0x2

    aput-object v9, v5, v10

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    .line 348
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-wide/16 v0, -0x1

    if-eqz v9, :cond_1

    .line 361
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 362
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 364
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->findContactId(J)J"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private findRawContactId(J)J
    .locals 11

    move-object/16 v8, p0

    move-wide/16 v9, p1

    .line 741
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "account_type=? AND sourceid=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v7, "org.sufficientlysecure.keychain.account"

    aput-object v7, v5, v6

    .line 747
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    .line 741
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const-wide/16 v0, -0x1

    if-eqz v9, :cond_1

    .line 750
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 751
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 753
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->findRawContactId(J)J"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getAccountEmails()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v5, p0

    .line 107
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 109
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 110
    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    const-string v6, "M_InsDal"

    const-string v7, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getAccountEmails()Ljava/util/Set;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getContactNamesFromEmails(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 120
    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    return-object v10

    .line 124
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 125
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "data1"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "display_name"

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const-string v5, "data1=?"

    new-array v7, v8, [Ljava/lang/String;

    aput-object v1, v7, v6

    const/4 v1, 0x0

    move-object v6, v7

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v10, 0x0

    return-object v10

    .line 139
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 140
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 143
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 146
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 147
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-object v0

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getContactNamesFromEmails(Ljava/util/Set;)Ljava/util/Set;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getMainProfileContactEmails()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v8, p0

    .line 157
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 161
    :cond_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    .line 162
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "data1"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const-string v0, "is_primary"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v0, "mimetype=?"

    new-array v5, v4, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v5, v7

    const-string v6, "is_primary DESC"

    move-object v4, v0

    .line 161
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 182
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 183
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 186
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getMainProfileContactEmails()Ljava/util/Set;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getMainProfileContactId()J
    .locals 10

    move-object/16 v7, p0

    .line 229
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 234
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-wide v1

    :cond_0
    if-eqz v0, :cond_1

    .line 238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getMainProfileContactId()J"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getMainProfileMasterKeyIds()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v9, p0

    .line 716
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 717
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "sourceid"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "account_type=?"

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "org.sufficientlysecure.keychain.account"

    aput-object v3, v6, v7

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 726
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 729
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getMainProfileMasterKeyIds()Ljava/util/Set;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private getRawContactMasterKeyIds()Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/16 v9, p0

    .line 694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 695
    iget-object v1, v9, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "sourceid"

    const/4 v7, 0x0

    aput-object v5, v4, v7

    const-string v5, "account_type=?"

    new-array v6, v3, [Ljava/lang/String;

    const-string v3, "org.sufficientlysecure.keychain.account"

    aput-object v3, v6, v7

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 704
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 705
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getRawContactMasterKeyIds()Ljava/util/Set;"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private insertContact(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    .line 762
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name"

    const-string v2, "OpenKeychain"

    .line 763
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "org.sufficientlysecure.keychain.account"

    .line 764
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    .line 765
    invoke-static {v5, p0}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 766
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 762
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->insertContact(Ljava/util/ArrayList;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private insertMainProfileRawContact(Ljava/util/ArrayList;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;J)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    .line 576
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_name"

    const-string v2, "OpenKeychain"

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "org.sufficientlysecure.keychain.account"

    .line 578
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "sourceid"

    .line 579
    invoke-static {v5, p0}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 580
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 576
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->insertMainProfileRawContact(Ljava/util/ArrayList;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private insertOrUpdateForRawContact(Landroid/net/Uri;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move-object/16 p1, p4

    const-wide/16 v0, -0x1

    cmp-long v2, v5, v0

    if-nez v2, :cond_0

    .line 822
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-direct {v3, v4, v5, p0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->referenceRawContact(Landroid/content/ContentProviderOperation$Builder;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    return-object v4

    .line 825
    :cond_0
    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->selectByRawContactAndItemType(Landroid/content/ContentProviderOperation$Builder;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    return-object v4

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->insertOrUpdateForRawContact(Landroid/net/Uri;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private isContactsPermissionGranted()Z
    .locals 6

    move-object/16 v3, p0

    .line 452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    return v1

    .line 456
    :cond_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v0, "READ_CONTACTS permission denied!"

    const/4 v1, 0x0

    .line 461
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->isContactsPermissionGranted()Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private referenceRawContact(Landroid/content/ContentProviderOperation$Builder;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    const-wide/16 v0, -0x1

    cmp-long v2, v5, v0

    if-nez v2, :cond_0

    const-string v5, "raw_contact_id"

    const/4 p0, 0x0

    .line 815
    invoke-virtual {v4, v5, p0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v0, "raw_contact_id"

    .line 816
    invoke-static {v5, p0}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    :goto_0
    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->referenceRawContact(Landroid/content/ContentProviderOperation$Builder;J)Landroid/content/ContentProviderOperation$Builder;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private selectByRawContactAndItemType(Landroid/content/ContentProviderOperation$Builder;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-wide/16 v4, p2

    move-object/16 p1, p4

    const-string v0, "raw_contact_id=? AND mimetype=?"

    const/4 v1, 0x2

    .line 831
    new-array v1, v1, [Ljava/lang/String;

    .line 834
    invoke-static {v4, p0}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 p0, 0x0

    aput-object v4, v1, p0

    const/4 v4, 0x1

    aput-object p1, v1, v4

    .line 831
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    return-object v3

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->selectByRawContactAndItemType(Landroid/content/ContentProviderOperation$Builder;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeContactDisplayName(Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-wide/16 v4, p2

    move-object/16 p1, p4

    if-eqz p1, :cond_0

    .line 805
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "vnd.android.cursor.item/name"

    invoke-direct {v2, v0, v4, p0, v1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->insertOrUpdateForRawContact(Landroid/net/Uri;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    const-string p0, "data1"

    .line 807
    invoke-virtual {v4, p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 808
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    .line 805
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeContactDisplayName(Ljava/util/ArrayList;JLjava/lang/String;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeContactEmail(Ljava/util/ArrayList;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move-wide/16 p1, p4

    .line 788
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 789
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/email_v2"

    .line 788
    invoke-direct {v3, v0, v5, p0, v1}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->selectByRawContactAndItemType(Landroid/content/ContentProviderOperation$Builder;JLjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 789
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    .line 790
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/ContactHelper;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getUserIds([J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;

    .line 793
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 794
    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-direct {v3, v0, v5, p0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->referenceRawContact(Landroid/content/ContentProviderOperation$Builder;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    .line 795
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "data1"

    .line 796
    invoke-virtual {p2}, Lorg/sufficientlysecure/keychain/model/UserPacket$UserId;->email()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p2

    .line 797
    invoke-virtual {p2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p2

    .line 798
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeContactEmail(Ljava/util/ArrayList;JJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeContactKey(Ljava/util/ArrayList;JJLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-wide/16 v5, p2

    move-wide/16 p1, p4

    move-object/16 p3, p6

    .line 776
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-direct {v3, v0, v5, p0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->referenceRawContact(Landroid/content/ContentProviderOperation$Builder;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string p0, "mimetype"

    const-string v0, "vnd.android.cursor.item/vnd.org.sufficientlysecure.keychain.key"

    .line 777
    invoke-virtual {v5, p0, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string p0, "data1"

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const p3, 0x7f1100d4

    .line 778
    invoke-virtual {v0, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p0, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string p0, "data2"

    .line 779
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v5, p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 780
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    .line 776
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    const-string p4, "M_InsDal"

    const-string p5, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeContactKey(Ljava/util/ArrayList;JJLjava/lang/String;)V"

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeKeysToMainProfileContact()V
    .locals 14

    move-object/16 v11, p0

    .line 533
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->deleteFlaggedMainProfileRawContacts()I

    .line 535
    invoke-direct {v11}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getMainProfileMasterKeyIds()Ljava/util/Set;

    move-result-object v0

    .line 539
    iget-object v1, v11, Lorg/sufficientlysecure/keychain/util/ContactHelper;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfoWithSecret()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 540
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v8

    .line 542
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 545
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v6, -0x1

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "masterKeyId with secret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 552
    invoke-direct {v11, v3, v8, v9}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->insertMainProfileRawContact(Ljava/util/ArrayList;J)V

    .line 553
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v10

    move-object v4, v11

    move-object v5, v3

    invoke-direct/range {v4 .. v10}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeContactKey(Ljava/util/ArrayList;JJLjava/lang/String;)V

    .line 556
    :try_start_0
    iget-object v2, v11, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 558
    invoke-static {v2}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 564
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 565
    invoke-direct {v11, v1, v2}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->deleteMainProfileRawContactByMasterKeyId(J)I

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete main profile raw contact with masterKeyId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void

    const-string v12, "M_InsDal"

    const-string v13, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeKeysToMainProfileContact()V"

    invoke-static/range {v12 .. v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private writeKeysToNormalContacts()V
    .locals 20

    move-object/16 v17, p0

    move-object/from16 v8, v17

    .line 467
    invoke-direct/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->deleteFlaggedNormalRawContacts()I

    .line 469
    invoke-direct/range {v17 .. v17}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getRawContactMasterKeyIds()Ljava/util/Set;

    move-result-object v9

    .line 472
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->keyRepository:Lorg/sufficientlysecure/keychain/daos/KeyRepository;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/daos/KeyRepository;->getAllUnifiedKeyInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 473
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->has_any_secret()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->master_key_id()J

    move-result-wide v11

    .line 478
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v13

    .line 480
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 482
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 486
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_expired()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_revoked()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->is_verified()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v13, :cond_3

    .line 496
    invoke-direct {v8, v11, v12}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->findRawContactId(J)J

    move-result-wide v6

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rawContactId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert new raw contact with masterKeyId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 503
    invoke-direct {v8, v14, v11, v12}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->insertContact(Ljava/util/ArrayList;J)V

    move-object v1, v8

    move-object v2, v14

    move-wide v3, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-wide v9, v6

    move-wide v5, v11

    move-object v7, v13

    .line 504
    invoke-direct/range {v1 .. v7}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeContactKey(Ljava/util/ArrayList;JJLjava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v15, v9

    move-object/from16 v16, v10

    move-wide v9, v6

    .line 509
    :goto_1
    invoke-direct {v8, v14, v9, v10, v13}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeContactDisplayName(Ljava/util/ArrayList;JLjava/lang/String;)V

    move-object v1, v8

    move-object v2, v14

    move-wide v3, v9

    move-wide v5, v11

    .line 510
    invoke-direct/range {v1 .. v6}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeContactEmail(Ljava/util/ArrayList;JJ)V

    .line 512
    :try_start_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 514
    invoke-static {v1}, Ltimber/log/Timber;->w(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    move-object v15, v9

    move-object/from16 v16, v10

    goto :goto_3

    :cond_4
    :goto_2
    move-object v15, v9

    move-object/from16 v16, v10

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expired or revoked or unverified: Deleting masterKeyId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, v11, v4

    if-eqz v1, :cond_5

    .line 490
    invoke-direct {v8, v11, v12}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->deleteRawContactByMasterKeyId(J)I

    :cond_5
    :goto_3
    move-object v9, v15

    move-object/from16 v10, v16

    goto/16 :goto_0

    :cond_6
    move-object v1, v9

    .line 521
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 522
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete raw contact with masterKeyId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v8, v3, v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->deleteRawContactByMasterKeyId(J)I

    goto :goto_4

    :cond_7
    return-void

    const-string v18, "M_InsDal"

    const-string v19, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeKeysToNormalContacts()V"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deleteAllContacts()I
    .locals 10

    move-object/16 v7, p0

    .line 633
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "Deleting all raw contacts associated to OK..."

    const/4 v2, 0x0

    .line 636
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v1, v7, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "account_type=?"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const-string v6, "org.sufficientlysecure.keychain.account"

    aput-object v6, v5, v2

    invoke-virtual {v1, v0, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 643
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    .line 644
    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 646
    iget-object v3, v7, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "account_type=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "org.sufficientlysecure.keychain.account"

    aput-object v6, v4, v2

    invoke-virtual {v3, v1, v5, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    const-string v8, "M_InsDal"

    const-string v9, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->deleteAllContacts()I"

    invoke-static/range {v8 .. v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getContactMails()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v8, p0

    .line 276
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 280
    :cond_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "data1"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 287
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 288
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 291
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getContactMails()Ljava/util/List;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getContactName(J)Ljava/lang/String;
    .locals 10

    move-object/16 v7, p0

    move-wide/16 v8, p1

    .line 378
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    const/4 v6, 0x0

    aput-object v4, v3, v6

    const-string v4, "_id=?"

    new-array v5, v2, [Ljava/lang/String;

    .line 384
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    const/4 v8, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    .line 387
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v9

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getContactName(J)Ljava/lang/String;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getContactNames()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v8, p0

    .line 299
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 303
    :cond_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 310
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 311
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 312
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 314
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getContactNames()Ljava/util/List;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getMainProfileContactName()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v8, p0

    .line 198
    invoke-direct {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 202
    :cond_0
    iget-object v1, v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "display_name"

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 212
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 214
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 217
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    const-string v9, "M_InsDal"

    const-string v10, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getMainProfileContactName()Ljava/util/List;"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPossibleUserEmails()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 68
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getAccountEmails()Ljava/util/Set;

    move-result-object v0

    .line 69
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getMainProfileContactEmails()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getPossibleUserEmails()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getPossibleUserNames()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/16 v4, p0

    .line 86
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getAccountEmails()Ljava/util/Set;

    move-result-object v0

    .line 87
    invoke-direct {v4, v0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getContactNamesFromEmails(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 88
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getMainProfileContactName()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 94
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 100
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->getPossibleUserNames()Ljava/util/List;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadMainProfilePhoto(Z)Landroid/graphics/Bitmap;
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    .line 252
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 257
    :cond_0
    :try_start_0
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getMainProfileContactId()J

    move-result-wide v2

    .line 259
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 260
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 261
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v1

    .line 269
    :cond_1
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    return-object v1

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->loadMainProfilePhoto(Z)Landroid/graphics/Bitmap;"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadPhotoByContactId(JZ)Landroid/graphics/Bitmap;
    .locals 7

    move-object/16 v4, p0

    move-wide/16 v5, p1

    move/16 p0, p3

    .line 413
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    return-object v1

    .line 420
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 427
    iget-object v6, v4, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6, v5, p0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v1

    .line 435
    :cond_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->loadPhotoByContactId(JZ)Landroid/graphics/Bitmap;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public loadPhotoByMasterKeyId(JZ)Landroid/graphics/Bitmap;
    .locals 7

    move-object/16 v4, p0

    move-wide/16 v5, p1

    move/16 p0, p3

    .line 396
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-nez v0, :cond_1

    return-object v1

    .line 404
    :cond_1
    :try_start_0
    invoke-direct {v4, v5, v6}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->findContactId(J)J

    move-result-wide v5

    .line 405
    invoke-virtual {v4, v5, v6, p0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->loadPhotoByContactId(JZ)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->loadPhotoByMasterKeyId(JZ)Landroid/graphics/Bitmap;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public masterKeyIdFromContactsDataUri(Landroid/net/Uri;)Ljava/lang/Long;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    .line 322
    invoke-direct {v9}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->isContactsPermissionGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 326
    :cond_0
    iget-object v2, v9, Lorg/sufficientlysecure/keychain/util/ContactHelper;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "data2"

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v10

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 330
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 335
    throw v0

    :cond_2
    :goto_0
    return-object v1

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->masterKeyIdFromContactsDataUri(Landroid/net/Uri;)Ljava/lang/Long;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public writeKeysToContacts()V
    .locals 3

    move-object/16 v0, p0

    .line 446
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeKeysToMainProfileContact()V

    .line 448
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->writeKeysToNormalContacts()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/util/ContactHelper;--->writeKeysToContacts()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
