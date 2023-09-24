.class Landroidx/work/impl/model/AlarmInfoDao_Impl$2;
.super Landroid/arch/persistence/room/SharedSQLiteStatement;
.source "AlarmInfoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/model/AlarmInfoDao_Impl;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/model/AlarmInfoDao_Impl;


# direct methods
.method constructor <init>(Landroidx/work/impl/model/AlarmInfoDao_Impl;Landroid/arch/persistence/room/RoomDatabase;)V
    .locals 0

    .line 37
    iput-object p1, p0, Landroidx/work/impl/model/AlarmInfoDao_Impl$2;->this$0:Landroidx/work/impl/model/AlarmInfoDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/SharedSQLiteStatement;-><init>(Landroid/arch/persistence/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM alarmInfo where work_spec_id=?"

    return-object v0
.end method
