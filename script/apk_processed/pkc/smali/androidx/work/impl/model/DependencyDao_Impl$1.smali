.class Landroidx/work/impl/model/DependencyDao_Impl$1;
.super Landroid/arch/persistence/room/EntityInsertionAdapter;
.source "DependencyDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/DependencyDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/persistence/room/EntityInsertionAdapter<",
        "Landroidx/work/impl/model/Dependency;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/DependencyDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/DependencyDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 20
    iput-object p1, p0, Landroidx/work/impl/model/DependencyDao_Impl$1;->this$0:Landroidx/work/impl/model/DependencyDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/EntityInsertionAdapter;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/Dependency;)V
    .locals 2

    .line 28
    iget-object v0, p2, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 29
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p2, Landroidx/work/impl/model/Dependency;->workSpecId:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 33
    :goto_0
    iget-object v0, p2, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 34
    invoke-interface {p1, v1}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 36
    :cond_1
    iget-object p2, p2, Landroidx/work/impl/model/Dependency;->prerequisiteId:Ljava/lang/String;

    invoke-interface {p1, v1, p2}, Landroid/arch/persistence/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Landroidx/work/impl/model/Dependency;

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/model/DependencyDao_Impl$1;->bind(Landroid/arch/persistence/db/SupportSQLiteStatement;Landroidx/work/impl/model/Dependency;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object v0
.end method