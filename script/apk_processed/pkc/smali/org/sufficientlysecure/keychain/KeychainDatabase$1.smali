.class Lorg/sufficientlysecure/keychain/KeychainDatabase$1;
.super Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;
.source "KeychainDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/KeychainDatabase;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/KeychainDatabase;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;ILandroid/content/Context;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 84
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->this$0:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;-><init>(I)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeychainDatabase$1;---><init>(Lorg/sufficientlysecure/keychain/KeychainDatabase;ILandroid/content/Context;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 87
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->this$0:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3, v1}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->access$000(Lorg/sufficientlysecure/keychain/KeychainDatabase;Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase$1;--->onCreate(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move/16 p0, p3

    .line 97
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->this$0:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->access$200(Lorg/sufficientlysecure/keychain/KeychainDatabase;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeychainDatabase$1;--->onDowngrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 102
    invoke-super {v1, v2}, Landroid/arch/persistence/db/SupportSQLiteOpenHelper$Callback;->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/KeychainDatabase$1;--->onOpen(Landroid/arch/persistence/db/SupportSQLiteDatabase;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {v2}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRAGMA foreign_keys=ON;"

    .line 105
    invoke-interface {v2, v0}, Landroid/arch/persistence/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    move/16 p0, p3

    .line 92
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->this$0:Lorg/sufficientlysecure/keychain/KeychainDatabase;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/KeychainDatabase$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v3, v1, v4, p0}, Lorg/sufficientlysecure/keychain/KeychainDatabase;->access$100(Lorg/sufficientlysecure/keychain/KeychainDatabase;Landroid/arch/persistence/db/SupportSQLiteDatabase;Landroid/content/Context;II)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/KeychainDatabase$1;--->onUpgrade(Landroid/arch/persistence/db/SupportSQLiteDatabase;II)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
